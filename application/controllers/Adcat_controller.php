<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Adcat_controller extends Admin_Core_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Categories
     */
    public function categories()
    {
        check_permission('classified_categories');
        $data['title'] = 'Classified Categories';
        $data['categories'] = $this->adcategory_model->get_parent_adcategories();
        
        $data['lang_search_column'] = 2;

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads-category/categories', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Add Category Post
     */
    public function add_category_post()
    {
        check_permission('classified_categories');
        //validate inputs
        $this->form_validation->set_rules('name', trans("category_name"), 'required|max_length[200]');
        $this->form_validation->set_rules('color', trans("category_color"), 'required|max_length[200]');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors_form', validation_errors());
            $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
            redirect($this->agent->referrer());
        } else {
            if ($this->adcategory_model->add_category()) {
                //last id
                $last_id = $this->db->insert_id();
                //update slug
                $this->adcategory_model->update_slug($last_id);

                $this->session->set_flashdata('success_form', trans("category") . " " . trans("msg_suc_added"));
                reset_cache_data_on_change();
                redirect($this->agent->referrer());
            } else {
                $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
                $this->session->set_flashdata('error_form', trans("msg_error"));
                redirect($this->agent->referrer());
            }
        }
    }

    /**
     * Update Category
     */
    public function update_category($id)
    {
        check_permission('classified_categories');
        $data['title'] = trans("update_category");
        //get category
        $data['category'] = $this->adcategory_model->get_category($id);
        
        if (empty($data['category'])) {
            redirect($this->agent->referrer());
        }

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads-category/update_category', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Update Category Post
     */
    public function update_category_post()
    {
        check_permission('classified_categories');
        //validate inputs
        $this->form_validation->set_rules('name', trans("category_name"), 'required|max_length[200]');
        $this->form_validation->set_rules('color', trans("category_color"), 'required|max_length[200]');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
            redirect($this->agent->referrer());
        } else {
            //category id
            $id = $this->input->post('id', true);
            $redirect_url = $this->input->post('redirect_url', true);
            if ($this->adcategory_model->update_category($id)) {

                //update slug
                $this->adcategory_model->update_slug($id);
                $this->session->set_flashdata('success', trans("category") . " " . trans("msg_suc_updated"));
                reset_cache_data_on_change();
                if (!empty($redirect_url)) {
                    redirect($redirect_url);
                } else {
                    redirect(admin_url() . 'ads-categories');
                }

            } else {
                $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
                $this->session->set_flashdata('error', trans("msg_error"));
                redirect($this->agent->referrer());
            }
        }
    }

    /**
     * Delete Category Post
     */
    public function delete_category_post()
    {
        if (!check_user_permission('classified_categories')) {
            exit();
        }
        $id = $this->input->post('id', true);
        //check subcategories
        if (count($this->adcategory_model->get_subadcategories_by_parent_id($id)) > 0) {
            $this->session->set_flashdata('error', trans("msg_delete_subcategories"));
            exit();
        }
        //check posts
        // if ($this->post_model->get_post_count_by_category($id) > 0) {
        //     $this->session->set_flashdata('error', trans("msg_delete_posts"));
        //     exit();
        // }
        if ($this->adcategory_model->delete_category($id)) {
            $this->session->set_flashdata('success', trans("category") . " " . trans("msg_suc_deleted"));
            reset_cache_data_on_change();
        } else {
            $this->session->set_flashdata('error', trans("msg_error"));
        }
    }

    /**
     * Subcategories
     */
    public function subcategories()
    {
        check_permission('classified_categories');
        $data['title'] = trans("subcategories");
        $data['categories'] = $this->adcategory_model->get_subadcategories();
        $data['parent_categories'] = $this->adcategory_model->get_parent_adcategories_by_lang($this->selected_lang->id);
        
        $data['lang_search_column'] = 2;

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads-category/subcategories', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Add Subcategory Post
     */
    public function add_subcategory_post()
    {
        check_permission('classified_categories');
        //validate inputs
        $this->form_validation->set_rules('name', trans("category_name"), 'required|max_length[200]');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors_form', validation_errors());
            $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
            redirect($this->agent->referrer());
        } else {
            if ($this->adcategory_model->add_subcategory()) {
                $this->session->set_flashdata('success_form', trans("category") . " " . trans("msg_suc_added"));
                reset_cache_data_on_change();
                redirect($this->agent->referrer());
            } else {
                $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
                $this->session->set_flashdata('error_form', trans("msg_error"));
                redirect($this->agent->referrer());
            }
        }
    }

    /**
     * Update Subcategory
     */
    public function update_subcategory($id)
    {
        check_permission('classified_categories');
        $data['title'] = trans("update_subcategory");
        //get category
        $data['category'] = $this->adcategory_model->get_category($id);
        if (empty($data['category'])) {
            redirect($this->agent->referrer());
        }

        $data['top_categories'] = $this->adcategory_model->get_parent_adcategories_by_lang($data['category']->lang_id);

        $this->load->view('admin/includes/_header', $data);
        $this->load->view('admin/ads-category/update_subcategory', $data);
        $this->load->view('admin/includes/_footer');
    }

    /**
     * Update Subcategory Post
     */
    public function update_subcategory_post()
    {
        check_permission('classified_categories');
        //validate inputs
        $this->form_validation->set_rules('name', trans("category_name"), 'required|max_length[200]');

        if ($this->form_validation->run() === false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
            redirect($this->agent->referrer());
        } else {
            //category id
            $id = $this->input->post('id', true);
            if ($this->adcategory_model->update_category($id)) {
                $this->session->set_flashdata('success', trans("category") . " " . trans("msg_suc_updated"));
                reset_cache_data_on_change();
                redirect(admin_url() . 'ad-subcategories');
            } else {
                $this->session->set_flashdata('form_data', $this->adcategory_model->input_values());
                $this->session->set_flashdata('error', trans("msg_error"));
                redirect($this->agent->referrer());
            }
        }
    }

    //get categories by language
    public function get_parent_adcategories_by_lang()
    {
        $lang_id = $this->input->post('lang_id', true);
        if (!empty($lang_id)):
            $categories = $this->adcategory_model->get_parent_adcategories_by_lang($lang_id);
            foreach ($categories as $item) {
                echo '<option value="' . $item->id . '">' . $item->name . '</option>';
            }
        endif;
    }

    //get subcategories
    public function get_sub_adcategories()
    {
        $id = $this->input->post('parent_id', true);
        if (!empty($id)):
            $subcategories = $this->adcategory_model->get_subadcategories_by_parent_id($id);
            foreach ($subcategories as $item) {
                echo '<option value="' . $item->id . '">' . $item->name . '</option>';
            }
        endif;
    }
}