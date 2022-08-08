<?php defined('BASEPATH') or exit('No direct script access allowed');

class Ad_controller extends Admin_Core_Controller
{

    public function __construct()
    {
        parent::__construct();

        if ($this->general_settings->email_verification == 1 && $this->auth_user->email_status == 0 && $this->auth_user->role != "admin") {
            $this->session->set_flashdata('error', trans("msg_confirmed_required"));
            redirect(generate_url('settings'));
        }
    }

    /**
     * Add Ad
     */
    public function add_new_ad()
    {
        check_permission('add_classified_ad');
        $title = "Add Claasified";
        $data['title'] = $title;
        
        $data['parent_categories'] = $this->adcategory_model->get_parent_adcategories_by_lang($this->selected_lang->id);

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads/add_new_ad', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Add Post Post
     */
    public function add_post_post()
    {
        check_permission('add_classified_ad');
        //validate inputs
        $this->form_validation->set_rules('title', trans("title"), 'required|max_length[500]');
        $this->form_validation->set_rules('summary', trans("summary"), 'max_length[5000]');
        $this->form_validation->set_rules('category_id', trans("category"), 'required');
        $this->form_validation->set_rules('currency', 'Currency', 'required');
        $this->form_validation->set_rules('price', 'Price', 'required');
        $this->form_validation->set_rules('transactional', 'Transactional Type', 'required');
        $this->form_validation->set_rules('condition', 'Condition', 'required');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->ad_admin_model->input_values());
            redirect($this->agent->referrer());
        } else {
            $post_type = $this->input->post('post_type', true);
            //if post added
            if ($this->ad_admin_model->add_post($post_type)) {
                //last id
                $last_id = $this->db->insert_id();
                //update slug
                $this->ad_admin_model->update_slug($last_id);
                //insert post tags
                $tags = trim($this->input->post('tags', true));
                $this->adtag_model->add_post_tags($last_id, $tags);

                
                //add post files
                if ($post_type != 'gallery' && $post_type != 'sorted_list') {
                    $this->ad_file_model->add_post_files($last_id);
                }

                $this->session->set_flashdata('success', trans("post") . " " . trans("msg_suc_added"));
                reset_cache_data_on_change();
                redirect($this->agent->referrer());
            } else {
                $this->session->set_flashdata('form_data', $this->ad_admin_model->input_values());
                $this->session->set_flashdata('error', trans("msg_error"));
                redirect($this->agent->referrer());
            }
        }
    }



    /**
     * Posts
     */
    public function ads()
    {
        check_permission('add_classified_ad');
        $data['title'] = "Claasified Ads";
        $data['authors'] = $this->auth_model->get_all_users();
        $data['form_action'] = admin_url() . "ads";
        $data['list_type'] = "ads";
        
        //get paginated posts
        $pagination = $this->paginate(admin_url() . 'ads', $this->ad_admin_model->get_paginated_posts_count('classifieds'));
        $data['posts'] = $this->ad_admin_model->get_paginated_posts($pagination['per_page'], $pagination['offset'], 'classifieds');

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads/ads', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Update Post
     */
    public function update_post($id)
    {
        check_permission('add_classified_ad');

        //get post
        $data['post'] = $this->ad_admin_model->get_post($id);
        if (empty($data['post'])) {
            redirect($this->agent->referrer());
        }
        if (!check_post_ownership($data['post']->user_id)) {
            redirect($this->agent->referrer());
        }

        $data['title'] = "Update Ad";
        $data['tags'] = $this->adtag_model->get_post_tags_string($id);
        $data['post_images'] = $this->ad_file_model->get_post_additional_images($id);
        $data['users'] = $this->auth_model->get_active_users();
        
        //define category ids
        $category = $this->adcategory_model->get_category($data["post"]->category_id);
        $data['parent_category_id'] = $data["post"]->category_id;
        $data['subcategory_id'] = 0;
        if (!empty($category) && $category->parent_id != 0) {
            $parent_category = $this->adcategory_model->get_category($category->parent_id);
            if (!empty($parent_category)) {
                $data['parent_category_id'] = $parent_category->id;
                $data['subcategory_id'] = $category->id;
            }
        }

        $data['categories'] = $this->adcategory_model->get_parent_adcategories_by_lang($data['post']->lang_id);
        $data['subcategories'] = $this->adcategory_model->get_subadcategories_by_parent_id($data['parent_category_id']);
       

        $view = "update_" . $data['post']->post_type;
        
        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/post/update_ad', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Update Post Post
     */
    public function update_post_post()
    {
        check_permission('add_classified_ad');
        //post id
        $post_id = $this->input->post('id', true);
        $post = $this->classified_model->get_post_by_id($post_id);
        if (empty($post)) {
            redirect($this->agent->referrer());
        }       

        //validate inputs
        $this->form_validation->set_rules('title', trans("title"), 'required|max_length[500]');
        $this->form_validation->set_rules('summary', trans("summary"), 'max_length[5000]');
        $this->form_validation->set_rules('category_id', trans("category"), 'required');
        $this->form_validation->set_rules('currency', 'Currency', 'required');
        $this->form_validation->set_rules('price', 'Price', 'required');
        $this->form_validation->set_rules('transactional', 'Transactional Type', 'required');
        $this->form_validation->set_rules('condition', 'Condition', 'required');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->post_admin_model->input_values());
            redirect($this->agent->referrer());
        } else {
            $post_type = $this->input->post('post_type', true);
            if ($this->ad_admin_model->update_post($post_id, $post_type)) {
                //update slug
                $this->ad_admin_model->update_slug($post_id);
                //update post tags
                $this->adtag_model->update_post_tags($post_id);
                //post types
                

                $this->session->set_userdata('msg_success', trans("post") . " " . trans("msg_suc_updated"));
                reset_cache_data_on_change();
            } else {
                $this->session->set_userdata('msg_error', trans("msg_error"));
            }
        }

        redirect($this->agent->referrer());
    }



    public function delete_post()
    {
        check_permission('add_classified_ad');
        $id = $this->input->post('id', true);
        $data["post"] = $this->ad_admin_model->get_post($id);
        //check if exists
        if (empty($data['post'])) {
            $this->session->set_flashdata('error', trans("msg_error"));
        } else {
            if ($this->ad_admin_model->delete_post($id)) {
                //delete post tags
                $this->adtag_model->delete_post_tags($id);
                $this->session->set_flashdata('success', trans("post") . " " . trans("msg_suc_deleted"));
                reset_cache_data_on_change();
            } else {
                $this->session->set_flashdata('error', trans("msg_error"));
            }
        }
    }
  
    public function post_options_post()
    {
        $option = $this->input->post('option', true);
        $id = $this->input->post('id', true);

        $data["post"] = $this->ad_admin_model->get_post($id);

        //check if exists
        if (empty($data['post'])) {
            redirect($this->agent->referrer());
        }

       if ($option == 'add-remove-from-featured') {
            check_permission('manage_all_posts');
            $result = $this->ad_admin_model->post_add_remove_featured($id);
            if ($result == "removed") {
                $this->session->set_flashdata('success', trans("msg_remove_featured"));
            }
            if ($result == "added") {
                $this->session->set_flashdata('success', trans("msg_add_featured"));
            }
        } 
        reset_cache_data_on_change();
        redirect($this->agent->referrer());
    }


}
