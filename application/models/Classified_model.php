<?php defined('BASEPATH') or exit('No direct script access allowed');

class Classified_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();

        $this->slider_posts_limit = 20;
        $this->breaking_posts_limit = 20;
        $this->random_posts_limit = 15;
        $this->recommended_posts_limit = 5;
        $this->popular_posts_limit = 5;
        $this->latest_posts_limit = 6;
        $this->related_posts_limit = 6;
    }

    //build sql query string
    public function query_string($join_tags = false)
    {
        $sql = "SELECT posts.id, posts.lang_id, posts.title, posts.title_slug, posts.summary, posts.category_id, posts.image_big, posts.image_slider, posts.image_mid, 
                posts.image_small, posts.image_mime, posts.image_storage, posts.slider_order, posts.featured_order, posts.post_type, posts.image_url, posts.user_id, posts.pageviews, posts.post_url, posts.updated_at, posts.created_at,
                categories.name AS category_name, categories.name_slug AS category_slug , categories.color AS category_color, 
                users.username AS author_username, users.slug AS author_slug,
                (SELECT COUNT(comments.id) FROM comments WHERE posts.id = comments.post_id AND comments.parent_id = 0 AND comments.status = 1) AS comment_count
                FROM posts
                INNER JOIN categories ON categories.id = posts.category_id
                INNER JOIN users ON users.id = posts.user_id ";
        if ($join_tags == true) {
            $sql .= "INNER JOIN tags ON tags.post_id = posts.id ";
        }
        $sql .= "WHERE posts.is_scheduled = 0 AND posts.visibility = 1 AND posts.status = 1 ";
        return $sql;
    }

    //get latest posts
    public function get_latest_posts($lang_id, $limit)
    {
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? ORDER BY posts.created_at DESC LIMIT ?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($lang_id), clean_number($limit)));
        return $query->result();
    }

    //load more posts
    public function load_more_posts($lang_id, $last_id, $limit)
    {
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? AND posts.id < ? ORDER BY posts.id DESC LIMIT ?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($lang_id), clean_number($last_id), clean_number($limit)));
        return $query->result();
    }

    //get latest posts by category
    public function get_latest_category_posts($lang_id)
    {
        // $sql = "SELECT id FROM
        //         (SELECT id, category_id, @row_number := IF(@prev = category_id, @row_number + 1, 1) AS number_of_rows, @prev := category_id
        //         FROM classifieds
        //         JOIN (SELECT @prev := NULL, @row_number := 0) AS vars
        //         WHERE classifieds.visibility = 1 AND classifieds.status = 1
        //         ORDER BY category_id, created_at DESC
        //         ) AS table_posts
        //         WHERE number_of_rows <= 10";
        // $query = $this->db->query($sql);
        // $result = $query->result();
        // $post_ids_array = array();
        // if (!empty($result)) {
        //     foreach ($result as $item) {
        //         array_push($post_ids_array, $item->id);
        //     }
        // }
        // $post_ids = generate_ids_string($post_ids_array);
        // if (!empty($post_ids)) {
            $sql = "SELECT classifieds.id,classifieds.is_featured, classifieds.title, classifieds.title_slug, classifieds.summary, classifieds.category_id, classifieds.image_big, classifieds.image_slider,classifieds.price,classifieds.currency,classifieds.transactional,classifieds.condition_type, classifieds.image_mid,
                classifieds.image_small, classifieds.image_mime, classifieds.image_storage, classifieds.featured_order, classifieds.post_type, classifieds.image_url, classifieds.user_id, classifieds.pageviews, classifieds.lang_id, classifieds.post_url, classifieds.created_at,
                adcategories.name AS category_name, adcategories.name_slug AS category_slug , adcategories.color AS category_color,
                users.username AS author_username, users.slug AS author_slug
                FROM classifieds
                INNER JOIN adcategories ON adcategories.id = classifieds.category_id
                INNER JOIN users ON users.id = classifieds.user_id
                WHERE classifieds.lang_id = $lang_id
                ORDER BY classifieds.created_at DESC";
            $query = $this->db->query($sql);
            return $query->result();
        // }
        // return array();
    }

    //get featured posts
    public function get_featured_posts()
    {
        $sql = "SELECT * FROM classifieds where lang_id = ? AND is_featured = 1 ORDER BY classifieds.created_at DESC LIMIT ?";
        // if ($this->general_settings->sort_featured_posts == 'by_featured_order') {
        //     $sql = "SELECT * FROM classifieds where lang_id = ? AND is_featured = 1 ORDER BY classifieds.featured_order, classifieds.id LIMIT ?";
        // }
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), 4));
        return $query->result();
    }

    //get random posts
    public function get_random_posts()
    {
        $posts = $this->latest_category_posts;
        if (empty($posts)) {
            return array();
        } else {
            shuffle($posts);
            $posts = array_slice($posts, 0, 15);
        }
        return $posts;
    }

    //get popular posts weekly
    public function get_popular_posts_weekly($lang_id)
    {
        $sql = "SELECT posts.id, posts.title, posts.title_slug, posts.post_type, posts.image_small, posts.image_mime, posts.image_storage, posts.image_url, posts.post_url, users.slug AS author_slug, users.username AS author_username, posts.created_at, hit_counts.count AS pageviews_count,
                (SELECT COUNT(comments.id) FROM comments WHERE posts.id = comments.post_id AND comments.parent_id = 0 AND comments.status = 1) AS comment_count
			    FROM posts
			    INNER JOIN (SELECT post_pageviews_week.post_id, COUNT(*) AS count FROM post_pageviews_week GROUP BY post_pageviews_week.post_id ORDER BY count DESC, post_pageviews_week.post_id LIMIT 10) AS hit_counts ON hit_counts.post_id = posts.id
                INNER JOIN users ON users.id = posts.user_id
                INNER JOIN categories ON categories.id = posts.category_id
                WHERE posts.is_scheduled = 0 AND posts.visibility = 1 AND posts.status = 1 AND posts.lang_id = ? ORDER BY count DESC, posts.id LIMIT ?";
        $query = $this->db->query($sql, array(clean_number($lang_id), $this->popular_posts_limit));
        return $query->result();
    }

    //get popular posts monthly
    public function get_popular_posts_monthly($lang_id)
    {
        $sql = "SELECT posts.id, posts.title, posts.title_slug, posts.post_type, posts.image_small, posts.image_mime, posts.image_storage, posts.image_url, posts.post_url, users.slug AS author_slug, users.username AS author_username, posts.created_at, hit_counts.count AS pageviews_count,
                (SELECT COUNT(comments.id) FROM comments WHERE posts.id = comments.post_id AND comments.parent_id = 0 AND comments.status = 1) AS comment_count
			    FROM posts
			    INNER JOIN (SELECT post_pageviews_month.post_id, COUNT(*) AS count FROM post_pageviews_month GROUP BY post_pageviews_month.post_id ORDER BY count DESC, post_pageviews_month.post_id LIMIT 10) AS hit_counts ON hit_counts.post_id = posts.id
                INNER JOIN users ON users.id = posts.user_id
                INNER JOIN categories ON categories.id = posts.category_id
                WHERE posts.is_scheduled = 0 AND posts.visibility = 1 AND posts.status = 1 AND posts.lang_id = ? ORDER BY count DESC, posts.id LIMIT ?";
        $query = $this->db->query($sql, array(clean_number($lang_id), $this->popular_posts_limit));
        return $query->result();
    }

    //get popular posts all time
    public function get_popular_posts_all_time($lang_id)
    {
        $sql = "SELECT posts.id, posts.title, posts.title_slug, posts.post_type, posts.image_small, posts.image_mime, posts.image_storage, posts.image_url, posts.post_url, users.slug AS author_slug, users.username AS author_username, posts.created_at, posts.pageviews AS pageviews_count,
                (SELECT COUNT(comments.id) FROM comments WHERE posts.id = comments.post_id AND comments.parent_id = 0 AND comments.status = 1) AS comment_count
			    FROM posts
                INNER JOIN users ON users.id = posts.user_id
                INNER JOIN categories ON categories.id = posts.category_id
                WHERE posts.is_scheduled = 0 AND posts.visibility = 1 AND posts.status = 1 AND posts.lang_id = ? ORDER BY pageviews DESC, id LIMIT ?";
        $query = $this->db->query($sql, array(clean_number($lang_id), $this->popular_posts_limit));
        return $query->result();
    }

    //get paginated posts
    public function get_paginated_posts($offset, $per_page)
    {
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? ORDER BY posts.created_at DESC LIMIT ?,?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_number($offset), clean_number($per_page)));
        return $query->result();
    }

    //get total post count
    public function get_total_post_count()
    {
        $sql = "SELECT COUNT(posts.id) AS count FROM posts
                INNER JOIN categories ON categories.id = posts.category_id
                INNER JOIN users ON users.id = posts.user_id
                WHERE posts.is_scheduled = 0 AND posts.visibility = 1 AND posts.status = 1 AND posts.lang_id = ?";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id)));
        return $query->row()->count;
    }

    //get category posts
    public function get_category_posts($category_id, $limit)
    {
        $category_ids = generate_ids_string(get_category_tree($category_id, $this->categories));
        if (empty($category_ids)) {
            return array();
        }
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? AND posts.category_id IN ({$category_ids}) ORDER BY posts.created_at DESC LIMIT ?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_number($limit)));
        return $query->result();
    }

    //get paginated category posts
    public function get_paginated_category_posts($category_id, $offset, $per_page)
    {
        $category_ids = generate_ids_string(get_category_tree($category_id, $this->adcategories));
        if (empty($category_ids)) {
            return array();
        }
        $sql = "SELECT * FROM classifieds WHERE lang_id = ? AND category_id IN ({$category_ids}) ORDER BY created_at DESC LIMIT ?,?";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_number($offset), clean_number($per_page)));
        return $query->result();
    }

    //get post count by category
    public function get_post_count_by_category($category_id)
    {
        $category_ids = generate_ids_string(get_category_tree($category_id, $this->categories));
        if (empty($category_ids)) {
            return array();
        }
        $sql = "SELECT COUNT(id) AS count FROM classifieds WHERE lang_id = ? AND category_id IN ({$category_ids})";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id)));
        return $query->row()->count;
    }

    //get paginated tag posts
    public function get_paginated_tag_posts($tag_slug, $offset, $per_page)
    {
        $sql = "SELECT * FROM (" . $this->query_string(true) . " AND posts.lang_id = ? AND tags.tag_slug=? ORDER BY posts.created_at DESC LIMIT ?,?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_str($tag_slug), clean_number($offset), clean_number($per_page)));
        return $query->result();
    }

    //get post count by tag
    public function get_post_count_by_tag($tag_slug)
    {
        $sql = "SELECT COUNT(table_posts.id) AS count FROM (" . $this->query_string(true) . " AND posts.lang_id = ? AND tags.tag_slug=?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_str($tag_slug)));
        return $query->row()->count;
    }

    //get post
    public function get_post($slug)
    {
        $sql = "SELECT classifieds.*,adcategories.id AS category_id,
                adcategories.name AS category_name, adcategories.name_slug AS category_slug , adcategories.color AS category_color, 
                users.username AS author_username,users.avatar AS author_avatar, users.email AS author_email, users.phone AS author_phone, users.slug AS author_slug, users.reward_system_enabled AS author_reward_system_enabled,
                (SELECT COUNT(classified_comments.id) FROM classified_comments WHERE classifieds.id = classified_comments.post_id AND classified_comments.status = 1) AS comment_count
                FROM classifieds
                INNER JOIN adcategories ON adcategories.id = classifieds.category_id
                INNER JOIN users ON users.id = classifieds.user_id
                WHERE classifieds.visibility = 1 AND classifieds.status = 1 AND classifieds.title_slug = ? AND classifieds.lang_id = ?";
        $query = $this->db->query($sql, array(clean_str($slug), clean_number($this->selected_lang->id)));
        return $query->row();
    }

    //get preview post
    public function get_post_preview($slug)
    {
        $sql = "SELECT posts.*,
                categories.name AS category_name, categories.name_slug AS category_slug , categories.color AS category_color, 
                users.username AS author_username, users.slug AS author_slug, users.reward_system_enabled AS author_reward_system_enabled,
                (SELECT COUNT(comments.id) FROM comments WHERE posts.id = comments.post_id AND comments.parent_id = 0 AND comments.status = 1) AS comment_count
                FROM posts
                INNER JOIN categories ON categories.id = posts.category_id
                INNER JOIN users ON users.id = posts.user_id
                WHERE posts.title_slug = ?";
        $query = $this->db->query($sql, array(clean_str($slug)));
        return $query->row();
    }

    //get user post by id
    public function get_post_by_id($post_id)
    {
        $sql = "SELECT * FROM classifieds WHERE id = ?";
        $query = $this->db->query($sql, array(clean_number($post_id)));
        return $query->row();
    }

    //get related posts
    public function get_related_posts($category_id, $post_id)
    {
        $category_ids = generate_ids_string(get_category_tree($category_id, $this->categories));
        if (empty($category_ids)) {
            return array();
        }
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.id != ? AND posts.category_id IN ({$category_ids}) LIMIT 1000) AS table_posts ORDER BY RAND() LIMIT ?";
        $query = $this->db->query($sql, array(clean_number($post_id), $this->related_posts_limit));
        return $query->result();
    }

    //get user posts
    public function get_user_posts($user_id, $limit)
    {
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? AND posts.user_id = ? ORDER BY posts.created_at DESC LIMIT ?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), clean_number($user_id), clean_number($limit)));
        return $query->result();
    }

    //get paginated user posts
    public function get_paginated_user_posts($user_id, $offset, $per_page)
    {
        $sql = "SELECT * FROM classifieds where classifieds.user_id=? ORDER BY classifieds.created_at DESC LIMIT ?,?";
        $query = $this->db->query($sql, array(clean_number($user_id), clean_number($offset), clean_number($per_page)));
        return $query->result();
    }

    public function get_all_favourites($user_id)
    {
        $sql = "SELECT favourites.ad_id, classifieds.* FROM classifieds
                INNER JOIN favourites ON classifieds.id = favourites.ad_id where classifieds.user_id=? ORDER BY classifieds.created_at DESC";
        $query = $this->db->query($sql, array(clean_number($user_id)));
        return $query->result();
    }

    public function get_all_inquiries($user_id)
    {
        $sql = "SELECT classified_inquiries.id as inq_id, classified_inquiries.*, classifieds.id , classifieds.title, classifieds.title_slug, users.username AS author_username, users.email AS author_email, users.phone AS author_phone,users.id FROM classified_inquiries
                INNER JOIN classifieds ON classified_inquiries.post_id = classifieds.id
                INNER JOIN users ON classified_inquiries.user_id = users.id 
                where classified_inquiries.user_id=? ORDER BY classified_inquiries.created_at DESC";
        $query = $this->db->query($sql, array(clean_number($user_id)));
        return $query->result();
    }

    //get post count by user
    public function get_post_count_by_user($user_id)
    {
        $sql = "SELECT COUNT(classifieds.id) AS count FROM classifieds WHERE classifieds.user_id=?";
        $query = $this->db->query($sql, array(clean_number($user_id)));
        return $query->row()->count;
    }

    //get user posts ids
    public function get_user_posts_ids($user_id)
    {
        $sql = "SELECT id FROM (" . $this->query_string() . " AND posts.user_id = ?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($user_id)));
        return $query->result_array();
    }

    //get paginated search posts
    public function get_paginated_search_posts($q, $offset, $per_page)
    {
        $like = '%' . $q . '%';
        $sql = "SELECT * FROM (" . $this->query_string() . " AND posts.lang_id = ? AND (posts.title LIKE ? OR posts.summary LIKE ? OR posts.content LIKE ?) ORDER BY posts.created_at DESC LIMIT ?,?) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), $like, $like, $like, clean_number($offset), clean_number($per_page)));
        return $query->result();
    }

    //get search post count
    public function get_search_post_count($q)
    {
        $like = '%' . $q . '%';
        $sql = "SELECT COUNT(table_posts.id) AS count FROM (" . $this->query_string() . " AND posts.lang_id = ? AND (posts.title LIKE ? OR posts.summary LIKE ? OR posts.content LIKE ?)) AS table_posts";
        $query = $this->db->query($sql, array(clean_number($this->selected_lang->id), $like, $like, $like));
        return $query->row()->count;
    }

    //get previous post
    public function get_previous_post($id)
    {
        $sql = "SELECT * FROM posts WHERE posts.is_scheduled = 0 AND posts.visibility=1 AND posts.status=1 AND posts.id < ? AND posts.lang_id= ? ORDER BY posts.created_at DESC LIMIT 1";
        $query = $this->db->query($sql, array(clean_number($id), clean_number($this->selected_lang->id)));
        return $query->row();
    }

    //get next post
    public function get_next_post($id)
    {
        $sql = "SELECT * FROM posts WHERE posts.is_scheduled = 0 AND posts.visibility=1 AND posts.status=1 AND posts.id > ? AND posts.lang_id= ? ORDER BY posts.created_at LIMIT 1";
        $query = $this->db->query($sql, array(clean_number($id), clean_number($this->selected_lang->id)));
        return $query->row();
    }

    //increase post pageviews
    public function increase_post_pageviews($post)
    {
        if (!empty($post) && !$this->agent->is_robot() && !is_bot()) {
            if ($this->agent->is_browser() || $this->agent->is_mobile()) {
                if (empty(helper_getcookie('post_' . $post->id))) {
                    $user_agent = $this->agent->agent_string();
                    $ip_address = $this->input->ip_address();
                    $date = date('Y-m-d H:i:s');
                    $reward_amount = 0;
                    if ($this->general_settings->reward_system_status == 1 && !empty($this->general_settings->reward_amount) && $post->author_reward_system_enabled == 1) {
                        $reward_amount = number_format($this->general_settings->reward_amount / 1000, 5, ".", "");
                    }
                    //check database
                    $sql = "SELECT id FROM ad_pageviews_week WHERE post_id = ? AND ip_address = ? AND user_agent = ? LIMIT 1";
                    $query = $this->db->query($sql, array($post->id, $ip_address, $user_agent));
                    $visit = $query->row();
                    if (empty($visit)) {
                        $this->db->where('id', $post->id);
                        if ($this->db->update('classifieds', ['pageviews' => $post->pageviews + 1])) {
                            helper_setcookie('ad_' . $post->id, '1');
                            if ($this->db->insert('ad_pageviews_week', ['post_id' => $post->id, 'post_user_id' => $post->user_id, 'ip_address' => $ip_address, 'user_agent' => $user_agent, 'reward_amount' => $reward_amount, 'created_at' => $date])) {
                                $this->db->insert('ad_pageviews_month', ['post_id' => $post->id, 'post_user_id' => $post->user_id, 'ip_address' => $ip_address, 'user_agent' => $user_agent, 'reward_amount' => $reward_amount, 'created_at' => $date]);
                                if ($reward_amount > 0) {
                                    $this->db->query("UPDATE users SET balance = FORMAT(balance + ?, 5), total_pageviews = total_pageviews + 1 WHERE id = ?", array($reward_amount, $post->user_id));
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    //delete old posts
    public function delete_old_posts()
    {
        if ($this->general_settings->auto_post_deletion == 1) {
            $day = clean_number($this->general_settings->auto_post_deletion_days);
            $sql = "SELECT id FROM posts WHERE created_at < DATE_SUB(NOW(), INTERVAL ? DAY) AND feed_id != ''";
            if ($this->general_settings->auto_post_deletion_delete_all == 1) {
                $sql = "SELECT id FROM posts WHERE created_at < DATE_SUB(NOW(), INTERVAL ? DAY)";
            }
            $posts = $this->db->query($sql, array($day))->result();
            if (!empty($posts)) {
                foreach ($posts as $post) {
                    $this->post_admin_model->delete_post($post->id);
                }
            }
        }
    }

    //delete old page views
    public function delete_old_pageviews()
    {
        $now = date('Y-m-d H:i:s');
        $week = strtotime("-7 days", strtotime($now));
        $month = strtotime("-30 days", strtotime($now));
        $this->db->query("DELETE FROM post_pageviews_week WHERE created_at < '" . date('Y-m-d H:i:s', $week) . "'");
        $this->db->query("DELETE FROM post_pageviews_month WHERE created_at < '" . date('Y-m-d H:i:s', $month) . "'");
    }

    public function add_to_favourie_ad($ad_id,$user_id){
        $data["ad_id"] = $ad_id;
        $data["user_id"] = $user_id;
        $data["status"] = 1;
        $this->db->insert('favourites', $data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function remove_from_favourite_ad($ad_id,$user_id){
        $cond  = ['user_id' => $user_id, 'ad_id' => $ad_id];
        $query = $this->db->where($cond);
        return $this->db->delete('favourites');
    }

    public function is_added_to_favourite($user_id,$ad_id){
        $sql = "SELECT * FROM favourites WHERE favourites.ad_id = ? AND favourites.user_id = ? LIMIT 1";
        $query = $this->db->query($sql, array($ad_id,$user_id));
        if (empty($query->row())) {
            return false;
        }
        return true;
    }

    //input values
    public function comment_input_values()
    {
        $data = array(
            'name' => $this->input->post('authorName', true),
            'email' => $this->input->post('authorEmail', true),
            'comment' => $this->input->post('comment', true),
            'title' => $this->input->post('title', true),
            'user_id' => $this->input->post('currentUserID', true),
            'post_id' => $this->input->post('adID', true)
        );
        return $data;
    }

    //add contact message
    public function add_comment_on_add()
    {
        $data = $this->comment_input_values();
        $ip_address = $this->input->ip_address();
        $data['ip_address'] = $ip_address;
        $data['created_at'] = date('Y-m-d H:i:s');
        return $this->db->insert('classified_comments', $data);
    }

    // //comments
    public function get_comments($post_id, $limit)
    {
        $sql = "SELECT classified_comments.*, users.username AS user_username, users.slug AS user_slug, users.avatar AS user_avatar
                FROM classified_comments LEFT JOIN users ON classified_comments.user_id = users.id 
                WHERE classified_comments.post_id = ? AND classified_comments.status = 1 ORDER BY classified_comments.id DESC LIMIT ?";
        $query = $this->db->query($sql, array(clean_number($post_id), clean_number($limit)));
        return $query->result();
    }

    public function seller_contact_input_values()
    {
        $data = array(
            'name' => $this->input->post('authorName', true),
            'email' => $this->input->post('authorEmail', true),
            'message' => $this->input->post('message', true),
            'phone' => $this->input->post('phone', true),
            'user_id' => $this->input->post('currentUserID', true),
            'post_id' => $this->input->post('adID', true)
        );
        return $data;
    }

    //add contact message
    public function seller_contact_on_ad()
    {
        $data = $this->seller_contact_input_values();
        $ip_address = $this->input->ip_address();
        $data['ip_address'] = $ip_address;
        $data['created_at'] = date('Y-m-d H:i:s');
        return $this->db->insert('classified_inquiries', $data);
    }

    public function get_inquiries($post_id)
    {
        $sql = "SELECT classified_inquiries.*, users.username AS user_username, users.slug AS user_slug, users.avatar AS user_avatar
                FROM classified_inquiries LEFT JOIN users ON classified_inquiries.user_id = users.id 
                WHERE classified_comments.post_id = ? AND classified_inquiries.status = 1 ORDER BY classified_inquiries.id DESC";
        $query = $this->db->query($sql, array(clean_number($post_id)));
        return $query->result();
    }
}
