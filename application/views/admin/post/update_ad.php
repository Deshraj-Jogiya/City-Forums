<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="row">
    <div class="col-sm-12">
        <!-- form start -->
        <?php echo form_open_multipart('ad_controller/update_post_post'); ?>
        <input type="hidden" name="post_type" value="article">
        <div class="row">
            <div class="col-sm-12 form-header">
                <h1 class="form-title"><?php echo "Update Classified Ad"; ?></h1>
                <a href="<?php echo admin_url(); ?>ads" class="btn btn-success btn-add-new pull-right">
                    <i class="fa fa-bars"></i>
                    Classified Ads
                </a>
            </div>
        </div>
 <div class="row">
                <div class="col-sm-12">
                    <div class="form-post">
                        <div class="form-post-left">
                            <div class="box">
                                <div class="box-header with-border">
                                    <div class="left">
                                        <h3 class="box-title">Ad Details</h3>
                                    </div>
                                </div><!-- /.box-header -->

                                <div class="box-body">
                                    <!-- include message block -->
                                    <!-- include message block -->
                                    <?php $this->load->view('admin/includes/_messages'); ?>

                                    <?php if (!empty($this->session->userdata('msg_error'))): ?>
                                        <div class="m-b-15">
                                            <div class="alert alert-danger alert-dismissable">
                                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                                <h4>
                                                    <i class="icon fa fa-times"></i>
                                                    <?php echo $this->session->userdata('msg_error');
                                                    $this->session->unset_userdata('msg_error'); ?>
                                                </h4>
                                            </div>
                                        </div>
                                    <?php endif; ?>

                                    <!--print custom success message-->
                                    <?php if (!empty($this->session->userdata('msg_success'))): ?>
                                        <div class="m-b-15">
                                            <div class="alert alert-success alert-dismissable">
                                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                                <h4>
                                                    <i class="icon fa fa-check"></i>
                                                    <?php echo $this->session->userdata('msg_success');
                                                    $this->session->unset_userdata('msg_success') ?>
                                                </h4>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                    <input type="hidden" name="id" value="<?php echo html_escape($post->id); ?>">
                                    <input type="hidden" name="referrer" class="form-control" value="<?php echo $this->agent->referrer(); ?>">
                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('title'); ?></label>
                                        <input type="text" id="wr_input_post_title" class="form-control" name="title" placeholder="<?php echo trans('title'); ?>"
                                               value="<?php echo $post->title; ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?> required>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('slug'); ?>
                                            <small>(<?php echo trans('slug_exp'); ?>)</small>
                                        </label>
                                        <input type="text" class="form-control" name="title_slug" placeholder="<?php echo trans('slug'); ?>"
                                               value="<?php echo $post->title_slug; ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('summary'); ?> & <?php echo trans("description"); ?> (<?php echo trans('meta_tag'); ?>)</label>
                                        <textarea class="form-control text-area"
                                                  name="summary" placeholder="<?php echo trans('summary'); ?> & <?php echo trans("description"); ?> (<?php echo trans('meta_tag'); ?>)" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>><?php echo $post->summary; ?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('keywords'); ?> (<?php echo trans('meta_tag'); ?>)</label>
                                        <input type="text" class="form-control" name="keywords"
                                               placeholder="<?php echo trans('keywords'); ?> (<?php echo trans('meta_tag'); ?>)" value="<?php $post->keywords; ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                    </div>

                                    <?php if (check_user_permission('manage_all_posts')): ?>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-xs-12">
                                                    <label><?php echo trans('visibility'); ?></label>
                                                </div>
                                                <div class="col-md-2 col-sm-4 col-xs-12 col-lang">
                                                    <input type="radio" id="rb_visibility_1" name="visibility" value="1" class="square-purple" <?php echo ($post->visibility == 1) ? 'checked' : ''; ?>>&nbsp;&nbsp;
                                                    <label for="rb_visibility_1" class="cursor-pointer"><?php echo trans('show'); ?></label>
                                                </div>
                                                <div class="col-md-2 col-sm-4 col-xs-12 col-lang">
                                                    <input type="radio" id="rb_visibility_2" name="visibility" value="0" class="square-purple" <?php echo ($post->visibility == 0) ? 'checked' : ''; ?>>&nbsp;&nbsp;
                                                    <label for="rb_visibility_2" class="cursor-pointer"><?php echo trans('hide'); ?></label>
                                                </div>
                                            </div>
                                        </div>
                                    <?php else: ?>
                                        <?php if ($this->general_settings->approve_added_user_posts == 1): ?>
                                            <input type="hidden" name="visibility" value="0">
                                        <?php else: ?>
                                            <input type="hidden" name="visibility" value="1">
                                        <?php endif; ?>
                                    <?php endif; ?>

                                    <?php if (check_user_permission('classified_categories')): ?>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-4 col-sm-12">
                                                    <label class="control-label"><?php echo trans('add_featured'); ?></label>
                                                </div>
                                                <div class="col-md-8 col-sm-12">
                                                    <input type="checkbox" name="is_featured" value="1" class="square-purple" <?php echo $post->is_featured == 1 ? 'checked' : ''; ?>>
                                                </div>
                                            </div>
                                        </div>
                                    <?php else: ?>
                                        <input type="hidden" name="is_featured" value="0">
                                    <?php endif; ?>


                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label class="control-label"><?php echo trans('tags'); ?></label>
                                                <input id="tags_1" type="text" name="tags" class="form-control tags" value="<?php echo html_escape($tags); ?>" />
                                                <small>(<?php echo trans('type_tag'); ?>)</small>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row-optional-url">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label class="control-label">Location</label>
                                                <input
                                                    type="text"
                                                    placeholder="Enter your address"
                                                    id="autocompletes"
                                                    class="form-control"
                                                    name="location"
                                                    value="<?php echo $post->location; ?>"
                                                />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row-optional-url">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <label class="control-label">Price</label>
                                                <div class="input-group-prepend">
                                                    <select name="currency" class="form-control" style="float:left;width: 25%;">
                                                            <option value="₣" <?php echo $post->currency == "₣" ? 'selected' : ''; ?>>FRF (₣)</option>
                                                            <option value="$" <?php echo $post->currency == "$" ? 'selected' : ''; ?>>USD ($)</option>
                                                            <option value="£" <?php echo $post->currency == "£" ? 'selected' : ''; ?>>GBP (£)</option>
                                                            <option value="€" <?php echo $post->currency == "€" ? 'selected' : ''; ?>>EUR (€)</option>
                                                    </select>
                                                </div>
                                                <input type="text" placeholder="Price" name="price" id="price" class="form-control" style="float:left;width: 75%;" value="<?php echo $post->price;?>" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row-optional-url">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label class="control-label">Transactional</label>                                              
                                                <select name="transactional" class="form-control">
                                                    <option value="">Choose transaction type</option>
                                                    <option value="all" <?php echo $post->transactional == "all" ? 'selected' : ''; ?>>All</option>
                                                    <option value="sell" <?php echo $post->transactional == "sell" ? 'selected' : ''; ?>>Sell</option>
                                                    <option value="buy" <?php echo $post->transactional == "buy" ? 'selected' : ''; ?>>Buy</option>
                                                    <option value="rent" <?php echo $post->transactional == "rent" ? 'selected' : ''; ?>>Rent</option>
                                                    <option value="exchange" <?php echo $post->transactional == "exchange" ? 'selected' : ''; ?>>Exchange</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Condition</label>                                              
                                                <select name="condition" class="form-control">
                                                    <option value="">Choose condition</option>
                                                    <option value="all" <?php echo $post->condition_type == "all" ? 'selected' : ''; ?>>All</option>
                                                    <option value="new" <?php echo $post->condition_type == "new" ? 'selected' : ''; ?>>New</option>
                                                    <option value="used" <?php echo $post->condition_type == "used" ? 'selected' : ''; ?>>Used</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                  
                                </div>
                            </div>

                           
                            <div class="row">
                                <div class="col-sm-12">
                                    <label class="control-label control-label-content"><?php echo trans('content'); ?></label>
                                    <div id="main_editor">
                                        <?php if (!empty($post)): ?>
                                            <textarea class="tinyMCE form-control" name="content"><?php echo $post->content; ?></textarea>
                                        <?php else: ?>
                                            <textarea class="tinyMCE form-control" name="content"><?php echo old('content'); ?></textarea>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-post-right">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="box">
                                        <div class="box-header with-border">
                                            <div class="left">
                                                <h3 class="box-title"><?php echo trans('image'); ?>
                                                    <small class="small-title"><?php echo trans('main_post_image'); ?></small>
                                                </h3>
                                            </div>
                                        </div><!-- /.box-header -->

                                        <div class="box-body">

                                            <div class="form-group m-0">
                                                <?php if (!empty($post)):
                                                    $post_img_url = base_url() . $post->image_mid;
                                                    if ($post->image_storage == "aws_s3") {
                                                        $post_img_url = $this->aws_base_url . $post->image_mid;
                                                    }
                                                    if (empty($post->image_mid)) {
                                                        $post_img_url = $post->image_url;
                                                    } ?>
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <?php if (!empty($post_img_url)): ?>
                                                                <div id="post_select_image_container" class="post-select-image-container">
                                                                    <img src="<?php echo $post_img_url; ?>" id="selected_image_file" alt="">
                                                                    <a id="btn_delete_post_main_image_database" class="btn btn-danger btn-sm btn-delete-selected-file-image" data-post-id="<?php echo $post->id; ?>">
                                                                        <i class="fa fa-times"></i>
                                                                    </a>
                                                                </div>
                                                            <?php else: ?>
                                                                <div id="post_select_image_container" class="post-select-image-container">
                                                                    <a class="btn-select-image" data-toggle="modal" data-target="#file_manager_image" data-image-type="main">
                                                                        <div class="btn-select-image-inner">
                                                                            <i class="icon-images"></i>
                                                                            <button class="btn"><?php echo trans("select_image"); ?></button>
                                                                        </div>
                                                                    </a>
                                                                </div>
                                                            <?php endif; ?>
                                                            <input type="hidden" name="post_image_id" id="post_image_id">
                                                        </div>
                                                    </div>                                                    
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <label class="control-label"><?php echo trans('image_description'); ?></label>
                                                            <input type="text" class="form-control" name="image_description" placeholder="<?php echo trans('image_description'); ?>" value="<?php echo $post->image_description; ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                                        </div>
                                                    </div>
                                                <?php else: ?>
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <div id="post_select_image_container" class="post-select-image-container">
                                                                <a class="btn-select-image" data-toggle="modal" data-target="#file_manager_image" data-image-type="main">
                                                                    <div class="btn-select-image-inner">
                                                                        <i class="icon-images"></i>
                                                                        <button class="btn"><?php echo trans("select_image"); ?></button>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <input type="hidden" name="post_image_id" id="post_image_id">
                                                        </div>
                                                    </div>                                                    
                                                    <div class="row row-image-description">
                                                        <div class="col-sm-12">
                                                            <label class="control-label"><?php echo trans('image_description'); ?></label>
                                                            <input type="text" class="form-control" name="image_description" placeholder="<?php echo trans('image_description'); ?>" value="<?php echo $post->image_description; ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <div class="box">
                                        <div class="box-header with-border">
                                            <div class="left">
                                                <h3 class="box-title"><?php echo trans('additional_images'); ?>
                                                    <small class="small-title"><?php echo trans("more_main_images"); ?></small>
                                                </h3>
                                            </div>
                                        </div><!-- /.box-header -->
                                        <div class="box-body">
                                            <div class="form-group m-0">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <a class='btn btn-sm bg-purple' data-toggle="modal" data-target="#file_manager_image" data-image-type="additional">
                                                            <?php echo trans('select_image'); ?>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group m-0">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <?php if (!empty($post)): ?>
                                                            <div class="additional-image-list">
                                                                <?php $additional_images = get_post_additional_images($post->id); ?>
                                                                <?php if (!empty($additional_images)): ?>
                                                                    <?php foreach ($additional_images as $image):
                                                                        $img_base_url = base_url();
                                                                        if ($image->storage == "aws_s3") {
                                                                            $img_base_url = $this->aws_base_url;
                                                                        } ?>
                                                                        <div class="additional-item additional-item-<?php echo $image->id; ?>">
                                                                            <img class="img-additional" src="<?php echo $img_base_url . $image->image_default; ?>" alt="">
                                                                            <a class="btn btn-danger btn-sm btn-delete-additional-image-database" data-value="<?php echo $image->id; ?>">
                                                                                <i class="fa fa-times"></i>
                                                                            </a>
                                                                        </div>
                                                                    <?php endforeach; ?>
                                                                <?php endif; ?>
                                                            </div>
                                                        <?php else: ?>
                                                            <div class="additional-image-list"></div>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>                           
                                
                                    <div class="box">
                                        <div class="box-header with-border">
                                            <div class="left">
                                                <h3 class="box-title"><?php echo trans('category'); ?></h3>
                                            </div>
                                        </div><!-- /.box-header -->
                                        <div class="box-body">
                                            
                                                <?php if (!empty($post)): ?>
                                                    <div class="form-group">
                                                        <label><?php echo trans("language"); ?></label>
                                                        <select name="lang_id" class="form-control" onchange="get_parent_categories_by_lang(this.value);">
                                                            <?php foreach ($this->languages as $language): ?>
                                                                <option value="<?php echo $language->id; ?>" <?php echo ($post->lang_id == $language->id) ? 'selected' : ''; ?>><?php echo $language->name; ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label"><?php echo trans('category'); ?></label>
                                                        <select id="categories" name="category_id" class="form-control" onchange="get_sub_categories(this.value);" required>
                                                            <option value=""><?php echo trans('select_category'); ?></option>
                                                            <?php foreach ($categories as $item): ?>
                                                                <option value="<?php echo html_escape($item->id); ?>" <?php echo ($item->id == $parent_category_id) ? 'selected' : ''; ?>><?php echo html_escape($item->name); ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group m-0">
                                                        <label class="control-label"><?php echo trans('subcategory'); ?></label>
                                                        <select id="subcategories" name="subcategory_id" class="form-control">
                                                            <option value="0"><?php echo trans('select_category'); ?></option>
                                                            <?php foreach ($subcategories as $item): ?>
                                                                <option value="<?php echo html_escape($item->id); ?>" <?php echo ($item->id == $subcategory_id) ? 'selected' : ''; ?>><?php echo html_escape($item->name); ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                <?php else: ?>
                                                    <div class="form-group">
                                                        <label><?php echo trans("language"); ?></label>
                                                        <select name="lang_id" class="form-control" onchange="get_parent_categories_by_lang(this.value);">
                                                            <?php foreach ($this->languages as $language): ?>
                                                                <option value="<?php echo $language->id; ?>" <?php echo ($this->selected_lang->id == $language->id) ? 'selected' : ''; ?>><?php echo $language->name; ?></option>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="control-label"><?php echo trans('category'); ?></label>
                                                        <select id="categories" name="category_id" class="form-control" onchange="get_sub_categories(this.value);" required>
                                                            <option value=""><?php echo trans('select_category'); ?></option>
                                                            <?php foreach ($parent_categories as $item): ?>
                                                                <?php if ($item->id == old('category_id')): ?>
                                                                    <option value="<?php echo html_escape($item->id); ?>" selected><?php echo html_escape($item->name); ?></option>
                                                                <?php else: ?>
                                                                    <option value="<?php echo html_escape($item->id); ?>"><?php echo html_escape($item->name); ?></option>
                                                                <?php endif; ?>
                                                            <?php endforeach; ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group m-0">
                                                        <label class="control-label"><?php echo trans('subcategory'); ?></label>
                                                        <select id="subcategories" name="subcategory_id" class="form-control">
                                                            <option value="0"><?php echo trans('select_category'); ?></option>
                                                        </select>
                                                    </div>
                                                <?php endif; ?>
                                            
                                        </div>
                                    </div>
                                <div class="box">
                                    <div class="box-header with-border">
                                        <div class="left">
                                            <h3 class="box-title">Update</h3>
                                        </div>
                                    </div><!-- /.box-header -->

                                    <div class="box-body">
                                            <div class="form-group">
                                                <button type="submit" name="status" value="1" class="btn btn-primary pull-left" onclick="allow_submit_form = true;">Update Ad</button>
                                            </div>
                                        

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?><!-- form end -->
        </div>
    </div>

<?php $this->load->view('admin/file-manager/_load_file_manager', ['load_images' => true, 'load_files' => true, 'load_videos' => false, 'load_audios' => false]); ?>

<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyAF46aG3ZyN3xPYbcoefhc3GK310wzXYKo"></script>
<script type="text/javascript">
    google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('autocomplete'));
            google.maps.event.addListener(places, 'place_changed', function () {
                var place = places.getPlace();
                var address = place.formatted_address;
                var latitude = place.geometry.location.A;
                var longitude = place.geometry.location.F;
                var mesg = "Address: " + address;
                mesg += "\nLatitude: " + latitude;
                mesg += "\nLongitude: " + longitude;
                alert(mesg);
            });
        });
</script>
