<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Wrapper -->
<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="nav-breadcrumb" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo lang_base_url(); ?>"><?php echo trans("home"); ?></a></li>
                        <li class="breadcrumb-item active" aria-current="page">Favourites Ads</li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="profile-page-top">
                    <!-- load profile details -->
                    <?php $this->load->view("profile/_profile_user_info"); ?>
                </div>
            </div>
        </div>

        <div class="profile-page">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3">
                    <div class="widget-followers">
                        <div class="widget-head">
                            <h3 class="title"><?php echo trans("following"); ?>&nbsp;(<?php echo count($following); ?>)</h3>
                        </div>
                        <div class="widget-body">
                            <div class="widget-content custom-scrollbar">
                                <div class="row row-followers">
                                    <?php if (!empty($following)):
                                        foreach ($following as $item):?>
                                            <div class="col-sm-2 col-xs-2 col-followers">
                                                <div class="img-follower">
                                                    <a href="<?php echo generate_profile_url($item->slug); ?>">
                                                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACwAAAAAAQABAAACAkQBADs=" data-src="<?php echo get_user_avatar($item->avatar); ?>" alt="<?php echo html_escape($item->username); ?>" class="img-responsive lazyload" onerror="this.src='<?= base_url(); ?>assets/img/user.png'">
                                                    </a>
                                                </div>
                                            </div>
                                        <?php endforeach;
                                    endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="widget-followers">
                        <div class="widget-head">
                            <h3 class="title"><?php echo trans("followers"); ?>&nbsp;(<?php echo count($followers); ?>)</h3>
                        </div>
                        <div class="widget-body">
                            <div class="widget-content custom-scrollbar-followers">
                                <div class="row row-followers">
                                    <?php if (!empty($followers)):
                                        foreach ($followers as $item):?>
                                            <div class="col-sm-2 col-xs-2 col-followers">
                                                <div class="img-follower">
                                                    <a href="<?php echo generate_profile_url($item->slug); ?>">
                                                        <img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACwAAAAAAQABAAACAkQBADs=" data-src="<?php echo get_user_avatar($item->avatar); ?>" alt="<?php echo html_escape($item->username); ?>" class="img-responsive lazyload" onerror="this.src='<?= base_url(); ?>assets/img/user.png'">
                                                    </a>
                                                </div>
                                            </div>
                                        <?php endforeach;
                                    endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-9">

                    <div class="row widget-followers">
                        <div class="widget-head">
                            <h3 class="title">Favourites Ads</h3>
                        </div>
                        <div class="widget-body">
                            <?php $this->last_visible_post_id = 1;
                                $this->load->view('partials/_my_classified_ads', ["skip" => 0, "visible_posts_count" => $this->post_load_more_count]); ?>

                            <?php $this->load->view("partials/_ad_spaces", ["ad_space" => "reading_list_bottom", "class" => ""]); ?>

                            <!-- Pagination -->
                            <div class="col-sm-12 col-xs-12">
                                <?php echo $this->pagination->create_links(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- Wrapper End-->


