<?php defined('BASEPATH') or exit('No direct script access allowed');

class Ad_admin_model extends CI_Model
{
    //input values
    public function input_values()
    {
        $data = array(
            'lang_id' => $this->input->post('lang_id', true),
            'title' => trim($this->input->post('title', false)),
            'title_slug' => $this->input->post('title_slug', true),
            'summary' => $this->input->post('summary', false),
            'category_id' => $this->input->post('category_id', true),
            'content' => $this->input->post('content', false),            
            'need_auth' => $this->input->post('need_auth', true),
            'is_featured' => $this->input->post('is_featured', true),
            'visibility' => $this->input->post('visibility', true),
            'keywords' => $this->input->post('keywords', true),
            'price' => $this->input->post('price', true),
            'currency' => $this->input->post('currency', true),
            'transactional' => $this->input->post('transactional', true),
            'condition_type' => $this->input->post('condition', true),
            'image_description' => $this->input->post('image_description', true),
        );
        return $data;
    }

    //add post
    public function add_post($post_type)
    {
        $data = $this->set_data($post_type);
        $data['created_at'] = date('Y-m-d H:i:s');

        $data['show_post_url'] = 0;
        $data["post_type"] = $post_type;
        $data['user_id'] = user()->id;
        $data['status'] = $this->input->post('status', true);

        //add post image
        $data["image_big"] = "";
        $data["image_default"] = "";
        $data["image_slider"] = "";
        $data["image_mid"] = "";
        $data["image_small"] = "";
        $data["image_mime"] = "jpg";
        $data["image_url"] = "";
        $data["image_storage"] = "local";
        $post_image_id = $this->input->post('post_image_id', true);
        if (!empty($post_image_id)) {
            $image = $this->file_model->get_image($post_image_id);
            if (!empty($image)) {
                $data["image_big"] = $image->image_big;
                $data["image_default"] = $image->image_default;
                $data["image_slider"] = $image->image_slider;
                $data["image_mid"] = $image->image_mid;
                $data["image_small"] = $image->image_small;
                $data["image_mime"] = $image->image_mime;
                if ($image->storage == "aws_s3") {
                    $data["image_storage"] = "aws_s3";
                }
            }
        }

        return $this->db->insert('classifieds', $data);
    }

    //update post
    public function update_post($id, $post_type)
    {
        $data = $this->set_data($post_type);
        $data["created_at"] = $this->input->post('date_published', true);
        // $data["user_id"] = $this->input->post('user_id', true);

        $publish = $this->input->post('publish', true);
        if (!empty($publish) && $publish == 1) {
            $data["status"] = 1;
        }

        //update post image
        $post_image_id = $this->input->post('post_image_id', true);
        if (!empty($post_image_id)) {
            $image = $this->file_model->get_image($post_image_id);
            if (!empty($image)) {
                $data["image_big"] = $image->image_big;
                $data["image_default"] = $image->image_default;
                $data["image_slider"] = $image->image_slider;
                $data["image_mid"] = $image->image_mid;
                $data["image_small"] = $image->image_small;
                $data["image_mime"] = $image->image_mime;
                $data["image_url"] = "";
                $data["image_storage"] = "local";
                if ($image->storage == "aws_s3") {
                    $data["image_storage"] = "aws_s3";
                }
            }
        }
        if (!empty($this->input->post('image_url', true))) {
            $data["image_url"] = $this->input->post('image_url', true);
            $data["image_big"] = "";
            $data["image_default"] = "";
            $data["image_slider"] = "";
            $data["image_mid"] = "";
            $data["image_small"] = "";
            $data["image_mime"] = "jpg";
            $data["image_storage"] = "";
        }
        $data['updated_at'] = date('Y-m-d H:i:s');

        $this->db->where('id', clean_number($id));
        return $this->db->update('classifieds', $data);
    }

    //set post data
    public function set_data($post_type)
    {
        $data = $this->input_values();

        if (!isset($data['is_featured'])) {
            $data['is_featured'] = 0;
        }
        
        if (!isset($data['need_auth'])) {
            $data['need_auth'] = 0;
        }
        
        //set category
        $subcategory_id = $this->input->post('subcategory_id', true);
        if (!empty($subcategory_id)) {
            $data['category_id'] = $subcategory_id;
        }

        $data['show_item_numbers'] = 0;
        if (!empty($this->input->post('show_item_numbers', true))) {
            $data['show_item_numbers'] = 1;
        }

        if (empty($data["title_slug"])) {
            //slug for title
            $data["title_slug"] = str_slug($data["title"]);
        } else {
            $data["title_slug"] = remove_special_characters($data["title_slug"], true);
        }
        
        return $data;
    }

    //update slug
    public function update_slug($id)
    {
        $post = $this->get_post($id);
        if (!empty($post)) {
            if (empty($post->title_slug) || $post->title_slug == "-") {
                $data = array(
                    'title_slug' => $post->id
                );
                $this->db->where('id', $post->id);
                $this->db->update('posts', $data);
            } else {
                if ($this->check_slug_exists($post->title_slug, $post->id) == true) {
                    $data = array(
                        'title_slug' => $post->title_slug . "-" . $post->id
                    );
                    $this->db->where('id', $post->id);
                    $this->db->update('posts', $data);
                }
            }
        }
        return false;
    }

    //check slug exists
    public function check_slug_exists($slug, $id)
    {
        $sql = "SELECT * FROM classifieds WHERE title_slug = ? AND id != ?";
        $query = $this->db->query($sql, array(clean_str($slug), clean_number($id)));
        if (!empty($query->row())) {
            return true;
        }
        return false;
    }

    //check post exists
    public function check_post_exists($title, $title_hash)
    {
        $sql = "SELECT * FROM classifieds WHERE title = ? OR title_hash = ?";
        $query = $this->db->query($sql, array(clean_str($title), clean_str($title_hash)));
        if (!empty($query->row())) {
            return true;
        }
        return false;
    }

    //generate CSV object
    public function generate_csv_object($file_path)
    {
        $array = array();
        $fields = array();
        $txt_name = uniqid() . '.txt';
        $i = 0;
        $handle = fopen($file_path, "r");
        if ($handle) {
            while (($row = fgetcsv($handle)) !== false) {
                if (empty($fields)) {
                    $fields = $row;
                    continue;
                }
                foreach ($row as $k => $value) {
                    $array[$i][$fields[$k]] = $value;
                }
                $i++;
            }
            if (!feof($handle)) {
                return false;
            }
            fclose($handle);

            if (!empty($array)) {
                $txt_file = fopen(FCPATH . "uploads/tmp/" . $txt_name, "w");
                fwrite($txt_file, serialize($array));
                fclose($txt_file);
                $csv_object = new stdClass();
                $csv_object->number_of_items = count($array);
                $csv_object->txt_file_name = $txt_name;
                @unlink($file_path);
                return $csv_object;
            }
        }
        return false;
    }

    
    //get post
    public function get_post($id)
    {
        $sql = "SELECT * FROM classifieds WHERE id =  ?";
        $query = $this->db->query($sql, array(clean_number($id)));
        return $query->row();
    }

    //get classifieds count
    public function get_posts_count()
    {
        $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 1 AND visibility = 1";
        $query = $this->db->query($sql);
        if (!check_user_permission('manage_all_posts')) {
            $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 1 AND visibility = 1 AND user_id = ?";
            $query = $this->db->query($sql, array(clean_number($this->auth_user->id)));
        }
        return $query->row()->count;
    }

    //get pending classifieds count
    public function get_pending_posts_count()
    {
        $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 1 AND visibility = 0";
        $query = $this->db->query($sql);
        if (!check_user_permission('manage_all_posts')) {
            $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 1 AND visibility = 0 AND user_id = ?";
            $query = $this->db->query($sql, array(clean_number($this->auth_user->id)));
        }
        return $query->row()->count;
    }

    //get drafts count
    public function get_drafts_count()
    {
        $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 0";
        $query = $this->db->query($sql);
        if (!check_user_permission('manage_all_posts')) {
            $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE status = 0 AND user_id = ?";
            $query = $this->db->query($sql, array(clean_number($this->auth_user->id)));
        }
        return $query->row()->count;
    }

    //filter by values
    public function filter_posts()
    {
        $lang_id = $this->input->get('lang_id', true);
        $post_type = $this->input->get('post_type', true);
        $user = $this->input->get('user', true);
        $category = $this->input->get('category', true);
        $subcategory = $this->input->get('subcategory', true);
        $q = trim($this->input->get('q', true));
        if (!empty($subcategory)) {
            $category = $subcategory;
        }
        $user_id = null;
        if (check_user_permission('classified_categories')) {
            if (!empty($user)) {
                $user_id = $user;
            }
        } else {
            $user_id = $this->auth_user->id;
        }

        if (!empty($user_id)) {
            $this->db->where('classifieds.user_id', clean_number($user_id));
        }
        if (!empty($lang_id)) {
            $this->db->where('classifieds.lang_id', clean_number($lang_id));
        }
        if (!empty($post_type)) {
            $this->db->where('classifieds.post_type', clean_str($post_type));
        }
        if (!empty($category)) {
            $category_ids = generate_ids_string(get_category_tree($category, $this->categories));
            if (!empty($category_ids)) {
                $this->db->where('classifieds.category_id IN (' . $category_ids . ')');
            }
        }
        if (!empty($q)) {
            $this->db->like('classifieds.title', clean_str($q));
        }
    }

    //filter by list
    public function filter_posts_list($list)
    {
        if (!empty($list)) {           
            if ($list == "featured_posts") {
                $this->db->where('classifieds.is_featured', 1);
            }            
        }
    }

    //get paginated classifieds
    public function get_paginated_posts($per_page, $offset, $list)
    {
        $this->filter_posts();
        $this->filter_posts_list($list);
        $this->db->where('classifieds.visibility', 1);
        $this->db->where('classifieds.status', 1);
        $this->db->order_by('classifieds.created_at', 'DESC');
        $this->db->limit($per_page, $offset);
        $query = $this->db->get('classifieds');
        return $query->result();
    }

    //get paginated classifieds count
    public function get_paginated_posts_count($list)
    {
        $this->filter_posts();
        $this->filter_posts_list($list);
        $this->db->select('COUNT(classifieds.id) as count');
        $this->db->where('classifieds.visibility', 1);
        $this->db->where('classifieds.status', 1);
        $query = $this->db->get('classifieds');
        return $query->row()->count;
    }

    //get paginated pending posts
    public function get_paginated_pending_posts($per_page, $offset)
    {
        $this->filter_posts();
        $this->db->where('classifieds.visibility', 0);
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.is_scheduled', 0);
        $this->db->order_by('classifieds.created_at', 'DESC');
        $this->db->limit($per_page, $offset);
        $query = $this->db->get('classifieds');
        return $query->result();
    }

    //get paginated pending posts count
    public function get_paginated_pending_posts_count()
    {
        $this->filter_posts();
        $this->db->select('COUNT(classifieds.id) as count');
        $this->db->where('classifieds.visibility', 0);
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.is_scheduled', 0);
        $query = $this->db->get('classifieds');
        return $query->row()->count;
    }

    //get paginated scheduled classifieds
    public function get_paginated_scheduled_posts($per_page, $offset)
    {
        $this->filter_posts();
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.is_scheduled', 1);
        $this->db->order_by('classifieds.created_at', 'DESC');
        $this->db->limit($per_page, $offset);
        $query = $this->db->get('classifieds');
        return $query->result();
    }

    //get paginated scheduled classifieds count
    public function get_paginated_scheduled_posts_count()
    {
        $this->filter_posts();
        $this->db->select('COUNT(classifieds.id) as count');
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.is_scheduled', 1);
        $query = $this->db->get('classifieds');
        return $query->row()->count;
    }

    //get paginated drafts
    public function get_paginated_drafts($per_page, $offset)
    {
        $this->filter_posts();
        $this->db->where('classifieds.status !=', 1);
        $this->db->order_by('classifieds.created_at', 'DESC');
        $this->db->limit($per_page, $offset);
        $query = $this->db->get('classifieds');
        return $query->result();
    }

    //get paginated drafts count
    public function get_paginated_drafts_count()
    {
        $this->filter_posts();
        $this->db->select('COUNT(classifieds.id) as count');
        $this->db->where('classifieds.status !=', 1);
        $query = $this->db->get('classifieds');
        return $query->row()->count;
    }

    //get feed classifieds count
    public function get_feed_posts_count($feed_id)
    {
        $this->filter_posts();
        $this->db->select('COUNT(classifieds.id) as count');
        $this->db->where('feed_id', clean_number($feed_id));
        $this->db->where('classifieds.visibility', 1);
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.is_scheduled', 0);
        $query = $this->db->get('classifieds');
        return $query->row()->count;
    }

    //get classifieds by feed id
    public function get_posts_by_feed_id($feed_id)
    {
        $sql = "SELECT * FROM classifieds WHERE feed_id = ?";
        $query = $this->db->query($sql, array(clean_number($feed_id)));
        return $query->result();
    }

    
    //add or remove post from featured
    public function post_add_remove_featured($id)
    {
        //get post
        $post = $this->get_post($id);
        if (!empty($post)) {
            $result = "";
            if ($post->is_featured == 1) {
                //remove from featured
                $data = array(
                    'is_featured' => 0,
                );
                $result = "removed";
            } else {
                //add to featured
                $data = array(
                    'is_featured' => 1,
                );
                $result = "added";
            }
            $this->db->where('id', $post->id);
            $this->db->update('classifieds', $data);
            return $result;
        }
    }

    

    //approve post
    public function approve_post($id)
    {
        $data = array(
            'visibility' => 1,
        );
        $this->db->where('id', clean_number($id));
        return $this->db->update('classifieds', $data);
    }

    //publish post
    public function publish_post($id)
    {
        $data = array(
            'is_scheduled' => 0,
            'created_at' => date('Y-m-d H:i:s')
        );
        $this->db->where('id', clean_number($id));
        return $this->db->update('classifieds', $data);
    }

    //check scheduled posts
    public function check_scheduled_posts()
    {
        $date = date('Y-m-d H:i:s');
        $sql = "SELECT * FROM classifieds WHERE is_scheduled = 1";
        $query = $this->db->query($sql);
        $posts = $query->result();
        if (!empty($posts)) {
            foreach ($posts as $post) {
                if ($post->created_at <= $date) {
                    $data = array(
                        'is_scheduled' => 0,
                    );
                    $this->db->where('id', $post->id);
                    $this->db->update('classifieds', $data);
                }
            }
            reset_cache_data_on_change();

            echo "All scheduled posts have been checked.";
        } else {
            echo "There are no scheduled posts.";
        }
    }

    //publish draft
    public function publish_draft($id)
    {
        $data = array(
            'status' => 1,
            'created_at' => date('Y-m-d H:i:s')
        );
        $this->db->where('id', clean_number($id));
        return $this->db->update('classifieds', $data);
    }

    //add or remove post from recommended
    public function post_add_remove_recommended($id)
    {
        //get post
        $post = $this->get_post($id);
        if (!empty($post)) {
            $result = "";
            if ($post->is_recommended == 1) {
                //remove from recommended
                $data = array(
                    'is_recommended' => 0,
                );
                $result = "removed";
            } else {
                //add to recommended
                $data = array(
                    'is_recommended' => 1,
                );
                $result = "added";
            }
            $this->db->where('id', $post->id);
            $this->db->update('classifieds', $data);
            return $result;
        }
    }

    //save feaured post order
    public function save_featured_post_order($id, $order)
    {
        //get post
        $post = $this->get_post($id);
        if (!empty($post)) {
            $data = array(
                'featured_order' => clean_number($order),
            );
            $this->db->where('id', $post->id);
            $this->db->update('classifieds', $data);
        }
    }

    //save home slider post order
    public function save_home_slider_post_order($id, $order)
    {
        //get post
        $post = $this->get_post($id);
        if (!empty($post)) {
            $data = array(
                'slider_order' => clean_number($order),
            );
            $this->db->where('id', $post->id);
            $this->db->update('classifieds', $data);
        }
    }

    //post bulk options
    public function post_bulk_options($operation, $post_ids)
    {
        $data = array();        
        if ($operation == 'add_featured') {
            $data['is_featured'] = 1;
        } elseif ($operation == 'remove_featured') {
            $data['is_featured'] = 0;
        } elseif ($operation == 'publish_scheduled') {
            $data['is_scheduled'] = 0;
            $data['created_at'] = date('Y-m-d H:i:s');
        } elseif ($operation == 'approve') {
            $data['visibility'] = 1;
        } elseif ($operation == 'publish_draft') {
            $data['status'] = 1;
            $data['created_at'] = date('Y-m-d H:i:s');
        }
        if (!empty($post_ids)) {
            foreach ($post_ids as $id) {
                $post = $this->get_post($id);
                if (!empty($post)) {
                    $this->db->where('id', $id);
                    $this->db->update('classifieds', $data);
                }
            }
        }
    }

    //delete post
    public function delete_post($id)
    {
        $post = $this->get_post($id);
        if (!empty($post)) {
            if (!check_post_ownership($post->user_id)) {
                return false;
            }
            //delete additional images
            $this->ad_file_model->delete_post_additional_images($post->id);
            //delete audios
            $this->ad_file_model->delete_post_audios($post->id);            

            //delete post tags
            $this->adtag_model->delete_post_tags($post->id);

            $this->db->where('id', $post->id);
            return $this->db->delete('classifieds');
        }
        return false;
    }

    //delete multi post
    public function delete_multi_posts($post_ids)
    {
        if (!empty($post_ids)) {
            foreach ($post_ids as $id) {
                $this->delete_post($id);
            }
        }
    }
}