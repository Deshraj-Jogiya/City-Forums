<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!-- Wrapper -->
<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <nav class="nav-breadcrumb" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?php echo lang_base_url(); ?>"><?php echo trans("home"); ?></a></li>
                        <li class="breadcrumb-item active" aria-current="page">Inquiries</li>
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
                            <h3 class="title">Inquiries</h3>
                        </div>
                        <div class="widget-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped" role="grid">
                                    <thead>
                                        <tr role="row">                                            
                                            <th width="20">Id</th>
                                            <th>Ad Name</th>
                                            <th>Inquired By</th>
                                            <th>User Email</th>
                                            <th>User Phone</th>
                                            <th>Inquiry Message</th>
                                            <th>Date Added</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(!empty($inquiries)){ 
                                        foreach ($inquiries as $inq) { ?>
                                        <tr>
                                            <td><?php echo $inq->inq_id;?></td>
                                            <td>
                                                <div class="td-post-item">
                                                    <a href="<?php echo generate_url('classified-ad/'.$inq->title_slug); ?>" target="_blank" class="inq-p-title">
                                                        <div class="post-title">
                                                           <?php echo $inq->title;?>                                        
                                                        </div>
                                                    </a>
                                                </div>
                                            </td>
                                            <td><?php echo isset($inq->author_username) ? $inq->author_username : $inq->name;?></td>
                                            <td><?php echo isset($inq->author_email) ? '<a href="mailto:'.$inq->author_email.'" class="inq-p-email">'.$inq->author_email.'</a>' : '<a href="mailto:'.$inq->email.'" class="inq-p-email">'.$inq->email.'</a>';?></td>
                                            <td><?php echo isset($inq->author_phone) ? '<a href="tel:'.$inq->author_phone.'" class="inq-p-phone">'.$inq->author_phone.'</a>' : '<a href="tel:'.$inq->phone.'" class="inq-p-phone">'.$inq->phone.'</a>';?></td>
                                            <td><?php echo $inq->message;?></td>
                                            <td><?php echo helper_date_format($inq->created_at);?></td>
                                            
                                        </tr>
                                        <?php } }else { ?>
                                        <tr>
                                            <td colspan="7">No inquiries found.</td>                                           
                                        </tr>
                                        <?php } ?>                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- Wrapper End-->


