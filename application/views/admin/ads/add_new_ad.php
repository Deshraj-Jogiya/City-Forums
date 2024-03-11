<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
    <div class="row">
        <div class="col-sm-12">
            <!-- form start -->
            <?php echo form_open_multipart('ad_controller/add_post_post'); ?>
            <input type="hidden" name="post_type" value="ads">
            <div class="row">
                <div class="col-sm-12 form-header">
                    <h1 class="form-title">Add New Classified Ad</h1>
                    <a href="<?php echo admin_url(); ?>ads" class="btn btn-success btn-add-new pull-right">
                        <i class="fa fa-bars"></i>
                        <?php echo trans('posts'); ?>
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
                                    <?php $this->load->view('admin/includes/_messages'); ?>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('title'); ?></label>
                                        <input type="text" id="wr_input_post_title" class="form-control" name="title" placeholder="<?php echo trans('title'); ?>"
                                               value="<?php echo old('title'); ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?> required>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('slug'); ?>
                                            <small>(<?php echo trans('slug_exp'); ?>)</small>
                                        </label>
                                        <input type="text" class="form-control" name="title_slug" placeholder="<?php echo trans('slug'); ?>"
                                               value="<?php echo old('title_slug'); ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('summary'); ?> & <?php echo trans("description"); ?> (<?php echo trans('meta_tag'); ?>)</label>
                                        <textarea class="form-control text-area"
                                                  name="summary" placeholder="<?php echo trans('summary'); ?> & <?php echo trans("description"); ?> (<?php echo trans('meta_tag'); ?>)" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>><?php echo old('summary'); ?></textarea>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label"><?php echo trans('keywords'); ?> (<?php echo trans('meta_tag'); ?>)</label>
                                        <input type="text" class="form-control" name="keywords"
                                               placeholder="<?php echo trans('keywords'); ?> (<?php echo trans('meta_tag'); ?>)" value="<?php echo old('keywords'); ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                    </div>

                                    <?php if (check_user_permission('manage_all_posts')): ?>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-xs-12">
                                                    <label><?php echo trans('visibility'); ?></label>
                                                </div>
                                                <div class="col-md-2 col-sm-4 col-xs-12 col-option">
                                                    <input type="radio" id="rb_visibility_1" name="visibility" value="1" class="square-purple" checked>
                                                    <label for="rb_visibility_1" class="cursor-pointer"><?php echo trans('show'); ?></label>
                                                </div>
                                                <div class="col-md-2 col-sm-4 col-xs-12 col-option">
                                                    <input type="radio" id="rb_visibility_2" name="visibility" value="0" class="square-purple">
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
                                                    <input type="checkbox" name="is_featured" value="1" class="square-purple" <?php echo (old('is_featured') == 1) ? 'checked' : ''; ?>>
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
                                                <input id="tags_1" type="text" name="tags" class="form-control tags"/>
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
                                                            <option value="₣">FRF (₣)</option>
                                                            <option value="$">USD ($)</option>
                                                            <option value="£">GBP (£)</option>
                                                            <option value="£">EUR (€)</option>
                                                    </select>
                                                </div>
                                                <input type="text" placeholder="Price" name="price" id="price" class="form-control" style="float:left;width: 75%;"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row-optional-url">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label class="control-label">Transactional</label>                                              
                                                <select name="transactional" class="form-control">
                                                    <option value="">Choose transaction type</option>
                                                    <option value="all">All</option>
                                                    <option value="sell">Sell</option>
                                                    <option value="buy">Buy</option>
                                                    <option value="rent">Rent</option>
                                                    <option value="exchange">Exchange</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Condition</label>                                              
                                                <select name="condition" class="form-control">
                                                    <option value="">Choose condition</option>
                                                    <option value="all">All</option>
                                                    <option value="new">New</option>
                                                    <option value="used">Used</option>
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
                                                        <input type="text" class="form-control" name="image_description" placeholder="<?php echo trans('image_description'); ?>" value="<?php echo old('image_description'); ?>" <?php echo ($this->rtl == true) ? 'dir="rtl"' : ''; ?>>
                                                    </div>
                                                </div>
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
                                                        <div class="additional-image-list"></div>
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
                                            
                                                <div class="form-group">
                                                    <label><?php echo trans("language"); ?></label>
                                                    <select name="lang_id" class="form-control" onchange="get_parent_adcategories_by_lang(this.value);">
                                                        <?php foreach ($this->languages as $language): ?>
                                                            <option value="<?php echo $language->id; ?>" <?php echo ($this->selected_lang->id == $language->id) ? 'selected' : ''; ?>><?php echo $language->name; ?></option>
                                                        <?php endforeach; ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo trans('category'); ?></label>
                                                    <select id="categories" name="category_id" class="form-control" onchange="get_sub_adcategories(this.value);" required>
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
                                            
                                        </div>
                                    </div>
                                <div class="box">
                                    <div class="box-header with-border">
                                        <div class="left">
                                            <h3 class="box-title"><?php echo trans('publish'); ?></h3>
                                        </div>
                                    </div><!-- /.box-header -->

                                    <div class="box-body">
                                            <div class="form-group">
                                                <button type="submit" name="status" value="1" class="btn btn-primary pull-left" onclick="allow_submit_form = true;"><?php echo trans('btn_submit'); ?></button>
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