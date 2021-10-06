<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<h1 class="title-index"><?php echo html_escape($home_title); ?></h1>
<div id="wrapper" class="index-wrapper m-t-45">    
    
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-xs-12">
             <div class="search-box-top">
                <h4>Consult or place your classified ad for free*</h4>
                <form action="<?php echo generate_url('classifieds'); ?>" method="get">
                    <div class="row">
                        <div class="col-md-2 col-sm-12"></div>
                        <div class="col-md-4 col-sm-12">
                            <div class="form-group">
                                <input type="text" name="keyword" autocomplete="search-keyword-suggestions" maxlength="500" placeholder="What are you looking for ?" class="form-control" data-qa-id="input-keywords-desktop" value="" style="padding: 0 1rem;">
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12">
                            <select class="form-control" name="category">
                                <option>Categories</option>
                                <?php foreach ($adcategories as $key => $value) {?>
                                    <option value="<?php echo $value->name_slug;?>"><?php echo $value->name; ?></option>
                                <?php }?>
                            </select>
                        </div>
                        <div class="col-md-2 col-sm-12"></div>
                        <div class="col-md-12 col-sm-12">
                            <input type="submit" id="edit-submit-petites-annonces" name="" value="To research" class="form-submit">
                        </div>
                    </div>
                </form>
             </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12 col-xs-12">
             <div class="post-an-ad">
                <?php if ($this->auth_check): ?>
                    <a href="<?php echo admin_url().'add-new-ad'; ?>" class="btn_open_login_modal btn_post_an_ad_classified"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Place an ad</a>
                <?php else: ?>
                    <a href="#" data-toggle="modal" data-target="#modal-login" class="btn_open_login_modal btn_post_an_ad_classified"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Place an ad</a>                           
                <?php endif; ?>               
             </div>
            </div>
        </div>
        <div class="row">            
            <div class="col-sm-12 col-xs-12 bn-header-mobile">
                <div class="row">
                    <?php $this->load->view("partials/_ad_spaces", ["ad_space" => "header", "class" => ""]); ?>
                </div>
            </div>
            <div id="content" class="col-sm-12 col-xs-12"> 
                <div class="col-sm-12 col-xs-12">  
                        <section class="section">
                            <h4 class="title">
                                <?php echo 'Top categories'; ?>
                            </h4>                            
                            <div class="section-content">
                                <div class="latest-articles">
                                    <input type="hidden" id="load_more_posts_lang_id" value="<?php echo $this->selected_lang->id; ?>">
                                        <div id="last_posts_content">
                                            <ul class="discover-categories">
                                                <?php foreach ($adcategories as $key => $value) {?>
                                                    <li>
                                                        <a href="<?php echo generate_url('adcategory/'.$value->name_slug); ?>">
                                                            <div class="category-box">
                                                                <div><img src="https://gamma.mb-themes.com/oc-content/themes/gamma/images/small_cat/3.png" /></div>
                                                                <h3><?php echo $value->name; ?></h3>
                                                            </div>
                                                        </a>
                                                    </li>
                                                <?php }?>
                                            </ul>
                                        </div>
                                </div>
                            </div>                                   
                        </section>
                </div>     

                <div id="content" class="col-sm-12 col-xs-12"> 
                <div class="col-sm-12 col-xs-12">                    
                        <section class="section">
                            <div class="section-head">
                                <h4 class="title">
                                    <?php echo 'Featured Listings'; ?>
                                </h4>
                            </div>
                            <div class="section-content">
                                <div class="row latest-articles">
                                    <input type="hidden" id="load_more_posts_lang_id" value="<?php echo $this->selected_lang->id; ?>">
                                    <div id="last_posts_content">
                                        <?php $this->last_visible_post_id = 1;
                                        $this->load->view('partials/_featured_classified_ads', ["skip" => 0, "visible_posts_count" => $this->post_load_more_count]); ?>
                                    </div>   
                                </div>
                            </div>                                   
                        </section>
                </div>               
                <div class="col-sm-12 col-xs-12">
                        <section class="section">
                            <div class="section-head">
                                <h4 class="title">
                                    <a href="<?php echo generate_url('posts'); ?>">
                                        <?php echo 'Lately added on our classifieds'; ?>
                                    </a>
                                </h4>
                            </div>
                            <div class="section-content">
                                <div class="row latest-articles">
                                    <input type="hidden" id="load_more_posts_lang_id" value="<?php echo $this->selected_lang->id; ?>">
                                    <div id="last_posts_content">
                                        <?php $this->last_visible_post_id = 1;
                                        $this->load->view('partials/_classified_ads', ["skip" => 0, "visible_posts_count" => $this->post_load_more_count]); ?>
                                    </div>
                                </div>
                            </div>                                   
                        </section>
                </div>
            </div>
           
        </div>
    </div>
</div>