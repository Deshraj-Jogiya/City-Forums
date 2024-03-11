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
        check_permission('add_post');
        $title = "add_ad";
        $data['title'] = trans($title);
        
        $data['parent_categories'] = $this->category_model->get_parent_categories_by_lang($this->selected_lang->id);

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads/add_new_ad', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Add Post Post
     */
    public function add_post_post()
    {
        check_permission('add_post');
        //validate inputs
        $this->form_validation->set_rules('title', trans("title"), 'required|max_length[500]');
        $this->form_validation->set_rules('summary', trans("summary"), 'max_length[5000]');
        $this->form_validation->set_rules('category_id', trans("category"), 'required');
        $this->form_validation->set_rules('optional_url', trans("optional_url"), 'max_length[1000]');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->post_admin_model->input_values());
            redirect($this->agent->referrer());
        } else {
            $post_type = $this->input->post('post_type', true);
            //if post added
            if ($this->post_admin_model->add_post($post_type)) {
                //last id
                $last_id = $this->db->insert_id();
                //update slug
                $this->post_admin_model->update_slug($last_id);
                //insert post tags
                $tags = trim($this->input->post('tags', true));
                $this->tag_model->add_post_tags($last_id, $tags);

                //post types
                if ($post_type == 'gallery') {
                    //insert gallery items
                    $this->post_item_model->add_post_list_items($last_id, 'gallery');
                } elseif ($post_type == "sorted_list") {
                    //insert sorted list items
                    $this->post_item_model->add_post_list_items($last_id, 'sorted_list');
                } elseif ($post_type == "audio") {
                    $this->post_file_model->add_post_audios($last_id);
                } elseif ($post_type == "article") {
                    $this->post_file_model->add_post_additional_images($last_id);
                } elseif ($post_type == 'trivia_quiz') {
                    $this->quiz_model->add_quiz_questions($last_id);
                    $this->quiz_model->add_quiz_results($last_id);
                } elseif ($post_type == 'personality_quiz') {
                    $this->quiz_model->add_quiz_results($last_id);
                    $this->quiz_model->add_quiz_questions($last_id);
                }
                //add post files
                if ($post_type != 'gallery' && $post_type != 'sorted_list') {
                    $this->post_file_model->add_post_files($last_id);
                }

                $this->session->set_flashdata('success', trans("post") . " " . trans("msg_suc_added"));
                reset_cache_data_on_change();
                redirect($this->agent->referrer());
            } else {
                $this->session->set_flashdata('form_data', $this->post_admin_model->input_values());
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
        check_permission('add_post');
        $data['title'] = trans('posts');
        $data['authors'] = $this->auth_model->get_all_users();
        $data['form_action'] = admin_url() . "posts";
        $data['list_type'] = "posts";
        
        //get paginated posts
        $pagination = $this->paginate(admin_url() . 'posts', $this->post_admin_model->get_paginated_posts_count('posts'));
        $data['posts'] = $this->post_admin_model->get_paginated_posts($pagination['per_page'], $pagination['offset'], 'posts');

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads/ads', $data);
        $this->load->view('admin/includes/_footer');
    }


 
  



}
