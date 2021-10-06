<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-xs-12">
             <div class="search-box-top category-page-search">
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
            <div class="col-sm-12 page-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo lang_base_url(); ?>"><?php echo trans("breadcrumb_home"); ?></a>
                    </li>
                    <?php $categories = get_parent_category_tree($category->id, $this->adcategories);
                    $i = 0;
                    if (!empty($categories)):
                        foreach ($categories as $item):
                            if ($i == 0 && count($categories) > 1): ?>
                                <li class="breadcrumb-item active">
                                    <a href="<?php echo generate_category_url($item); ?>"><?php echo html_escape($item->name); ?></a>
                                </li>
                            <?php else: ?>
                                <li class="breadcrumb-item">
                                    <span><?php echo html_escape($item->name); ?></span>
                                </li>
                            <?php endif;
                            $i++;
                        endforeach;
                    endif; ?>
                </ol>
            </div>
            
            <div id="content" class="col-sm-8">                
                    <div class="col-sm-12">
                        <h1 class="page-title"><?php echo html_escape($category->name); ?></h1>
                    </div>
                    <?php $count = 0; ?>
                    <?php foreach ($posts as $post): ?>
                        <?php if ($count != 0 && $count % 2 == 0): ?>
                            <div class="col-sm-12"></div>
                        <?php endif; ?>
                        <div class="col-md-4 col-sm-6 col-xs-6">
                        <?php $this->load->view("post/_ad_item_horizontal", ["post" => $post]); ?>
                        </div>
                        <?php if ($count == 1): ?>
                            <?php $this->load->view("partials/_ad_spaces", ["ad_space" => "category_top", "class" => "p-b-30"]); ?>
                        <?php endif; ?>
                        <?php $count++; ?>
                    <?php endforeach; ?>
                    <?php if($count == 0):?>
                        <div class="col-md-12 col-sm-6 col-xs-6">
                        No ads found.
                        </div>
                    <?php endif; ?>
                    <?php $this->load->view("partials/_ad_spaces", ["ad_space" => "category_bottom", "class" => ""]); ?>
                    <div class="col-sm-12 col-xs-12">
                        <?php echo $this->pagination->create_links(); ?>
                    </div>
            </div>
            <div id="sidebar" class="col-sm-4">
                <?php $this->load->view('partials/_ad_sidebar'); ?>
            </div>
        </div>
    </div>
</div>