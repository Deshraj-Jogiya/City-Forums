<?php defined('BASEPATH') or exit('No direct script access allowed');

class Adcategory_model extends CI_Model
{
    //input values
    public function input_values()
    {
        $data = array(
            'lang_id' => $this->input->post('lang_id', true),
            'name' => $this->input->post('name', true),
            'name_slug' => $this->input->post('name_slug', true),
            'parent_id' => $this->input->post('parent_id', true),
            'description' => $this->input->post('description', true),
            'keywords' => $this->input->post('keywords', true),
            'color' => $this->input->post('color', true),
        );
        return $data;
    }

    //add category
    public function add_category()
    {
        $data = $this->input_values();
        if (empty($data["name_slug"])) {
            //slug for title
            $data["name_slug"] = str_slug($data["name"]);
        } else {
            $data["name_slug"] = remove_special_characters($data["name_slug"], true);
        }
        $data['created_at'] = date('Y-m-d H:i:s');
        return $this->db->insert('adcategories', $data);
    }

    //add subcategory
    public function add_subcategory()
    {
        $data = $this->input_values();

        $category = $this->get_category($data["parent_id"]);
        if ($category) {
            $data["color"] = $category->color;
        } else {
            $data["color"] = "#0a0a0a";
        }

        if (empty($data["name_slug"])) {
            //slug for title
            $data["name_slug"] = str_slug($data["name"]);
        } else {
            $data["name_slug"] = remove_special_characters($data["name_slug"], true);
        }
        $data['created_at'] = date('Y-m-d H:i:s');
        return $this->db->insert('adcategories', $data);
    }

    //update slug
    public function update_slug($id)
    {
        $category = $this->get_category($id);
        if (!empty($category)) {
            if (empty($category->name_slug) || $category->name_slug == "-") {
                $data = array(
                    'name_slug' => $category->id
                );
                $this->db->where('id', $category->id);
                $this->db->update('adcategories', $data);
            } else {
                if ($this->check_slug_exists($category->name_slug, $category->id) == true) {
                    $data = array(
                        'name_slug' => $category->name_slug . "-" . $category->id
                    );
                    $this->db->where('id', $id);
                    $this->db->update('adcategories', $data);
                }
            }
        }
    }

    //check slug
    public function check_slug_exists($slug, $id)
    {
        $sql = "SELECT * FROM adcategories WHERE adcategories.name_slug = ? AND adcategories.id != ?";
        $query = $this->db->query($sql, array(clean_str($slug), clean_number($id)));
        if (!empty($query->row())) {
            return true;
        }
        return false;
    }

    //get category
    public function get_category($id)
    {
        $sql = "SELECT adcategories.*, (SELECT name_slug FROM adcategories AS tbl_adcategories WHERE tbl_adcategories.id = tbl_adcategories.parent_id) as parent_slug FROM adcategories WHERE adcategories.id =  ?";
        $query = $this->db->query($sql, array(clean_number($id)));
        return $query->row();
    }

    //get category by slug
    public function get_category_by_slug($slug)
    {
        $sql = "SELECT adcategories.*, (SELECT name_slug FROM adcategories AS tbl_adcategories WHERE tbl_adcategories.id = adcategories.parent_id) as parent_slug FROM adcategories WHERE adcategories.name_slug =  ?";
        $query = $this->db->query($sql, array(clean_str($slug)));
        return $query->row();
    }

    //get parent adcategories
    public function get_parent_adcategories()
    {
        $query = $this->db->query("SELECT * FROM adcategories WHERE adcategories.parent_id = 0 ORDER BY created_at ASC");
        return $query->result();
    }

    //get parent adcategories by lang
    public function get_parent_adcategories_by_lang($lang_id)
    {
        return $this->db->where('parent_id', 0)->where('lang_id', clean_number($lang_id))->order_by('name')->get('adcategories')->result();
    }

    //get adcategories
    public function get_adcategories()
    {
        $query = $this->db->query("SELECT adcategories.*, (SELECT name_slug FROM adcategories AS tbl_adcategories WHERE tbl_adcategories.id = adcategories.parent_id) as parent_slug FROM adcategories");
        return $query->result();
    }

    //get adcategories by lang
    public function get_adcategories_by_lang($lang_id)
    {
        $sql = "SELECT adcategories.*, (SELECT name_slug FROM adcategories AS tbl_adcategories WHERE tbl_adcategories.id = adcategories.parent_id) as parent_slug FROM adcategories WHERE adcategories.lang_id =  ?";
        $query = $this->db->query($sql, array(clean_number($lang_id)));
        return $query->result();
    }

    //get subadcategories
    public function get_subadcategories()
    {
        $query = $this->db->query("SELECT * FROM adcategories WHERE adcategories.parent_id != 0");
        return $query->result();
    }

    //get subadcategories by lang
    public function get_subadcategories_by_lang($lang_id)
    {
        $sql = "SELECT * FROM adcategories WHERE adcategories.parent_id != 0 AND adcategories.lang_id =  ?";
        $query = $this->db->query($sql, array(clean_number($lang_id)));
        return $query->result();
    }

    //get subadcategories by parent id
    public function get_subadcategories_by_parent_id($parent_id)
    {
        return $this->db->where('parent_id', clean_number($parent_id))->order_by('name')->get('adcategories')->result();
    }

    //get category count
    public function get_category_count()
    {
        $sql = "SELECT COUNT(adcategories.id) AS count FROM adcategories";
        $query = $this->db->query($sql);
        return $query->row()->count;
    }

    //get category count
    public function get_total_ads_by_adcategory($category_id)
    {
        $sql = "SELECT COUNT(classifieds.id) AS count FROM classifieds WHERE category_id = '".$category_id."'";
        $query = $this->db->query($sql);
        return $query->row()->count;
    }

    //update category
    public function update_category($id)
    {
        $id = clean_number($id);
        $data = $this->input_values();
        if (empty($data["name_slug"])) {
            //slug for title
            $data["name_slug"] = str_slug($data["name"]);
        } else {
            $data["name_slug"] = remove_special_characters($data["name_slug"], true);
        }

        $category = $this->get_category($id);
        //check if parent
        if ($category->parent_id == 0) {
            $this->update_subadcategories_color($id, $data["color"]);
        } else {
            $parent = $this->get_category($data["parent_id"]);
            if ($parent) {
                $data["color"] = $parent->color;
            } else {
                $data["color"] = "#0a0a0a";
            }
        }

        $this->db->where('id', $id);
        return $this->db->update('adcategories', $data);
    }

    //update subcategory color
    public function update_subadcategories_color($parent_id, $color)
    {
        $adcategories = $this->get_subadcategories_by_parent_id($parent_id);
        if (!empty($adcategories)) {
            foreach ($adcategories as $item) {
                $data = array(
                    'color' => $color,
                );
                $this->db->where('parent_id', $parent_id);
                return $this->db->update('adcategories', $data);
            }
        }
    }

    //delete category
    public function delete_category($id)
    {
        $category = $this->get_category($id);
        if (!empty($category)) {
            $this->db->where('id', $category->id);
            return $this->db->delete('adcategories');
        } else {
            return false;
        }
    }

}