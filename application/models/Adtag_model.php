<?php defined('BASEPATH') or exit('No direct script access allowed');

class Adtag_model extends CI_Model
{
    //add post tags
    public function add_post_tags($ad_id, $tags)
    {
        $tags_array = explode(",", $tags);
        if (!empty($tags_array)) {
            foreach ($tags_array as $tag) {
                $tag = trim($tag);
                if (strlen($tag) > 1) {
                    $data = array(
                        'ad_id' => clean_number($ad_id),
                        'tag' => trim($tag),
                        'tag_slug' => str_slug(trim($tag))
                    );
                    if (empty($data["tag_slug"]) || $data["tag_slug"] == "-") {
                        $data["tag_slug"] = "tag-" . uniqid();
                    }
                    //insert tag
                    $this->db->insert('adtags', $data);
                }
            }
        }
    }

    //update post tags
    public function update_post_tags($ad_id)
    {
        //delete old tags
        $this->delete_post_tags($ad_id);
        //add new tags
        $tags = trim($this->input->post('tags', true));

        $tags_array = explode(",", $tags);
        if (!empty($tags_array)) {
            foreach ($tags_array as $tag) {
                $tag = trim($tag);
                if (strlen($tag) > 1) {
                    $data = array(
                        'ad_id' => clean_number($ad_id),
                        'tag' => trim($tag),
                        'tag_slug' => str_slug(trim($tag))
                    );

                    if (empty($data["tag_slug"]) || $data["tag_slug"] == "-") {
                        $data["tag_slug"] = "tag-" . uniqid();
                    }
                    //insert tag
                    $this->db->insert('adtags', $data);
                }
            }
        }
    }

    //get random tags
    public function get_random_tags()
    {
        $this->db->join('classifieds', 'classifieds.id = adtags.ad_id');
        $this->db->join('users', 'classifieds.user_id = users.id');
        $this->db->select('adtags.tag_slug, adtags.tag');
        $this->db->group_by('adtags.tag_slug, adtags.tag');
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.lang_id', clean_number($this->selected_lang->id));
        $this->db->where('classifieds.visibility', 1);
        $this->db->order_by('rand()');
        $this->db->limit(15);
        $query = $this->db->get('adtags');
        return $query->result();
    }

    //get tags
    public function get_tags()
    {
        $this->db->join('classifieds', 'classifieds.id = adtags.ad_id');
        $this->db->join('users', 'classifieds.user_id = users.id');
        $this->db->select('adtags.tag_slug, adtags.tag');
        $this->db->group_by('adtags.tag_slug, adtags.tag');
        $this->db->order_by('adtags.tag');
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.lang_id', clean_number($this->selected_lang->id));
        $this->db->where('classifieds.visibility', 1);
        $query = $this->db->get('adtags');
        return $query->result();
    }


    //get tag
    public function get_tag($tag_slug)
    {
        $this->db->join('classifieds', 'classifieds.id = adtags.ad_id');
        $this->db->join('users', 'classifieds.user_id = users.id');
        $this->db->select('adtags.*, classifieds.lang_id as tag_lang_id');
        $this->db->order_by('adtags.tag');
        $this->db->where('adtags.tag_slug', clean_str($tag_slug));
        $this->db->where('classifieds.status', 1);
        $this->db->where('classifieds.visibility', 1);
        $query = $this->db->get('adtags');
        return $query->row();
    }

    //get posts tags
    public function get_post_tags($ad_id)
    {
        $sql = "SELECT * FROM adtags WHERE ad_id = ?";
        $query = $this->db->query($sql, array(clean_number($ad_id)));
        return $query->result();
    }

    //get posts tags string
    public function get_post_tags_string($ad_id)
    {
        $str = "";
        $count = 0;
        $tags_array = $this->get_post_tags($ad_id);
        foreach ($tags_array as $item) {
            if ($count > 0) {
                $str .= ",";
            }
            $str .= $item->tag;
            $count++;
        }
        return $str;
    }

    //delete tags
    public function delete_post_tags($ad_id)
    {
        $tags = $this->get_post_tags($ad_id);
        if (!empty($tags)) {
            foreach ($tags as $tag) {
                //delete
                $this->db->where('id', $tag->id);
                $this->db->delete('adtags');
            }
        }
    }

}