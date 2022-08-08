<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 page-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo lang_base_url(); ?>"><?php echo trans("breadcrumb_home"); ?></a>
                    </li>
                    <?php $categories = get_parent_category_tree($ad_detail->category_id, $this->adcategories);
                    $i = 0;
                    if (!empty($categories)):
                        foreach ($categories as $item):
                            if ($i == 0 && count($categories) > 1): ?>
                                <li class="breadcrumb-item ">
                                    <a href="<?php echo generate_url('adcategory/'.$ad_detail->category_slug); ?>"><?php echo html_escape($item->name); ?></a>
                                </li>
                            <?php else: ?>
                                <li class="breadcrumb-item">
                                    <span><?php echo html_escape($item->name); ?></span>
                                </li>
                            <?php endif;
                            $i++;
                        endforeach;
                    endif; ?>
                    <li class="breadcrumb-item active">
                        <?php echo $ad_detail->title; ?>
                    </li>
                </ol>
            </div>
            <div id="content" class="col-sm-8 col-sm-12">
                <div class="ad-main-image main-data">
                    <?php $this->load->view("post/_post_image", ["post_item" => $ad_detail, "type" => "medium"]); ?>
                </div>
                <div class="row ad-main-posted">
                    <div class="col-md-6 col-sm-12">
                        <div class="posted-ad">
                            <p class="posting-date"><i class="far fa-clock"></i> <?php echo helper_date_format($ad_detail->created_at); ?></p>
                        </div>
                        <div class="location-ad">
                            <a target="_blank" class="location" href="https://www.google.com/maps?daddr=<?php echo $ad_detail->location; ?>"> 
                                <i class="fa fa-map-marker"></i>         
                                <span><?php echo $ad_detail->location; ?></span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <?php if(isset($_SESSION['vr_sess_user_id']) ){
                            if(is_user_favourite_ad($_SESSION['vr_sess_user_id'],$ad_detail->id)){?>
                        <div class="save-ad-favourite">
                            <a href="#" class="posting-date remove-from-favorite"><i class="fas fa-heart"></i> Saved</a>
                            <input type="hidden" id="adID" value="<?php echo $ad_detail->id;?>" />
                            <input type="hidden" id="currentUserID" value="<?php echo isset($_SESSION['vr_sess_user_id']) ? $_SESSION['vr_sess_user_id'] : "";?>" />                           
                        </div>  
                        <?php }else{ ?>
                        <div class="save-ad-favourite">
                            <a href="#" class="posting-date add-to-favorite"><i class="fas fa-heart"></i> Save to favourite</a>
                            <input type="hidden" id="adID" value="<?php echo $ad_detail->id;?>" />
                            <input type="hidden" id="currentUserID" value="<?php echo isset($_SESSION['vr_sess_user_id']) ? $_SESSION['vr_sess_user_id'] : "";?>" />                           
                        </div> 
                        <?php } } else{?>
                        <div class="save-ad-favourite">
                            <a href="#" class="posting-date add-to-favorite" data-toggle="modal" data-target="#modal-login"><i class="fas fa-heart"></i> Save to favourite</a>
                        </div>
                        <?php } ?>                       
                    </div>
                </div>

                <div class="row ad-main-title">
                    <div class="col-sm-12">
                        <h1 class="page-title"><?php echo html_escape($ad_detail->title); ?></h1>
                    </div>
                    <div class="col-sm-12">
                        <div class="ad-price font-text">
                            <span><?php echo $ad_detail->price; ?> <?php echo $ad_detail->currency; ?></span>
                        </div>
                    </div>
                </div>

                <div class="row ad-divider"></div>

                <div class="row ad-content">
                    <div class="col-sm-12">
                        <h2>
                            Description <span class="item-views"><?php echo $ad_detail->pageviews; ?> views</span>  
                        </h2>
                        <?php echo $ad_detail->content; ?>
                    </div>
                </div>

                <div class="row ad-divider"></div>

                <div class="row ad-seller-info">
                    <div class="col-sm-6">
                        <div class="row-custom">
                            <h1 class="username">Seller: <span><?= html_escape($ad_detail->author_username); ?></span></h1>
                        </div>
                        <div class="row-custom">
                            <img src="<?= get_user_avatar($ad_detail->author_avatar); ?>" alt="<?= html_escape($ad_detail->author_username); ?>" class="img-profile">
                        </div>
                    </div>
                    <div class="col-sm-6 sright">
                        <div class="row-custom contactS">
                            <?php if(isset($_SESSION['vr_sess_user_id'])) {?>
                                <a href="#" class="btn" data-toggle="modal" data-target="#modal_contact_seller"><i class="fa fa-envelope" aria-hidden="true"></i> Contact Seller</a>
                            <?php } else { ?>
                                <a href="#" class="btn" data-toggle="modal" data-target="#modal-login"><i class="fa fa-envelope" aria-hidden="true"></i> Contact Seller</a>
                            <?php }?>    
                        </div>
                        <div class="row-custom contactPhone">
                            <?php if(isset($_SESSION['vr_sess_user_id'])) {?>
                            <a href="tel:<?= html_escape($ad_detail->author_phone); ?>" class="mobile btn" data-phone="<?= html_escape($ad_detail->author_phone); ?>" title="Click to show number">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span><?php echo html_escape($ad_detail->author_phone); ?></span>
                            </a>
                            <?php } else { ?>
                            <a href="javascript;" class="mobile btn" data-toggle="modal" data-target="#modal-login" title="Click to show number">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span><?php echo substr($ad_detail->author_phone, 0, 2) . '********'; ?></span>
                            </a>   
                            <?php }?>
                        </div>
                    </div>
                </div>

                <div class="row ad-safe-block">
                     <div class="col-sm-12">
                    <div class="safe-block">
                        <strong>Always stay safe!</strong>
                        <span class="txt">Never pay down a deposit in a bank account until you have met the seller, seen signed a purchase agreement. NO serious private advertisers ask for a down payment before you meet. Receiving an email with an in-scanned ID does not mean that you have identified the sender. You do this on the spot, when you sign a purchase agreement.</span>
                        <svg xmlns="http://www.w3.org/2000/svg" height="48" version="1.1" viewBox="-38 0 512 512.00142" width="48"> <g id="surface1"> <path d="M 217.996094 158.457031 C 164.203125 158.457031 120.441406 202.21875 120.441406 256.007812 C 120.441406 309.800781 164.203125 353.5625 217.996094 353.5625 C 271.785156 353.5625 315.546875 309.800781 315.546875 256.007812 C 315.546875 202.21875 271.785156 158.457031 217.996094 158.457031 Z M 275.914062 237.636719 L 206.027344 307.523438 C 203.09375 310.457031 199.246094 311.925781 195.402344 311.925781 C 191.558594 311.925781 187.714844 310.460938 184.78125 307.523438 L 158.074219 280.816406 C 152.207031 274.953125 152.207031 265.441406 158.074219 259.574219 C 163.9375 253.707031 173.449219 253.707031 179.316406 259.574219 L 195.402344 275.660156 L 254.671875 216.394531 C 260.535156 210.527344 270.046875 210.527344 275.914062 216.394531 C 281.78125 222.257812 281.78125 231.769531 275.914062 237.636719 Z M 275.914062 237.636719 " style=" stroke:none;fill-rule:nonzero;fill:#4182c3;fill-opacity:1;"></path> <path d="M 435.488281 138.917969 L 435.472656 138.519531 C 435.25 133.601562 435.101562 128.398438 435.011719 122.609375 C 434.59375 94.378906 412.152344 71.027344 383.917969 69.449219 C 325.050781 66.164062 279.511719 46.96875 240.601562 9.042969 L 240.269531 8.726562 C 227.578125 -2.910156 208.433594 -2.910156 195.738281 8.726562 L 195.40625 9.042969 C 156.496094 46.96875 110.957031 66.164062 52.089844 69.453125 C 23.859375 71.027344 1.414062 94.378906 0.996094 122.613281 C 0.910156 128.363281 0.757812 133.566406 0.535156 138.519531 L 0.511719 139.445312 C -0.632812 199.472656 -2.054688 274.179688 22.9375 341.988281 C 36.679688 379.277344 57.492188 411.691406 84.792969 438.335938 C 115.886719 468.679688 156.613281 492.769531 205.839844 509.933594 C 207.441406 510.492188 209.105469 510.945312 210.800781 511.285156 C 213.191406 511.761719 215.597656 512 218.003906 512 C 220.410156 512 222.820312 511.761719 225.207031 511.285156 C 226.902344 510.945312 228.578125 510.488281 230.1875 509.925781 C 279.355469 492.730469 320.039062 468.628906 351.105469 438.289062 C 378.394531 411.636719 399.207031 379.214844 412.960938 341.917969 C 438.046875 273.90625 436.628906 199.058594 435.488281 138.917969 Z M 217.996094 383.605469 C 147.636719 383.605469 90.398438 326.367188 90.398438 256.007812 C 90.398438 185.648438 147.636719 128.410156 217.996094 128.410156 C 288.351562 128.410156 345.59375 185.648438 345.59375 256.007812 C 345.59375 326.367188 288.351562 383.605469 217.996094 383.605469 Z M 217.996094 383.605469 " style=" stroke:none;fill-rule:nonzero;fill:#4182c3;fill-opacity:1;"></path> </g> </svg>
                      </div>
                    </div>
                </div>

                <div class="row ad-divider"></div>

                <div class="row ad-class-sharing post-share">
                    <div class="col-sm-12">
                        <ul class="share-box">
                            <li class="share-li-lg">
                                <a href="javascript:void(0)"
                                   onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-lg facebook">
                                    <i class="icon-facebook"></i>
                                    <span><?php echo trans("facebook"); ?></span>
                                </a>
                            </li>
                            <li class="share-li-lg">
                                <a href="javascript:void(0)"
                                   onclick="window.open('https://twitter.com/share?url=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>&amp;text=<?php echo urlencode($post->title); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-lg twitter">
                                    <i class="icon-twitter"></i>
                                    <span><?php echo trans("twitter"); ?></span>
                                </a>
                            </li>
                            <li class="share-li-sm">
                                <a href="javascript:void(0)"
                                   onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-sm facebook">
                                    <i class="icon-facebook"></i>
                                </a>
                            </li>
                            <li class="share-li-sm">
                                <a href="javascript:void(0)"
                                   onclick="window.open('https://twitter.com/share?url=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>&amp;text=<?php echo urlencode($post->title); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-sm twitter">
                                    <i class="icon-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="window.open('http://www.linkedin.com/shareArticle?mini=true&amp;url=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-sm linkedin">
                                    <i class="icon-linkedin"></i>
                                </a>
                            </li>
                            <li class="li-whatsapp">
                                <a href="https://api.whatsapp.com/send?text=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?> - <?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>"
                                   class="social-btn-sm whatsapp"
                                   target="_blank">
                                    <i class="icon-whatsapp"></i>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="window.open('http://pinterest.com/pin/create/button/?url=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>&amp;media=<?php echo base_url() . html_escape($ad_detail->image_default); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-sm pinterest">
                                    <i class="icon-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="window.open('http://www.tumblr.com/share/link?url=<?php echo generate_url('classified-ad/'.$ad_detail->title_slug); ?>&amp;title=<?php echo urlencode($post->title); ?>', 'Share This Post', 'width=640,height=450');return false"
                                   class="social-btn-sm tumblr">
                                    <i class="icon-tumblr"></i>
                                </a>
                            </li>
                           <!--  <li>
                                <a href="javascript:void(0)" id="print_post_ad" class="social-btn-sm btn-print">
                                    <i class="icon-print"></i>
                                </a>
                            </li> -->
                        </ul>
                    </div>
                </div>
                
            </div>
            <div id="sidebar" class="col-sm-4">
                
                <div class="row ad-class-comments">
                    <div class="col-sm-12">
                        <div id="comment" class="mbBr3Top">
                          <h2>
                            <span>Comments</span>
                            <span class="count"><?php echo $ad_detail->comment_count;?></span>
                          </h2>

                            <div class="wrap">
                                <?php if(!empty($ad_comments)){
                                    foreach($ad_comments as $comment){
                                    ?>
                                    <div class="comment">
                                        <div class="image">
                                            <img src="<?= get_user_avatar($comment->user_avatar); ?>" alt="<?= isset($comment->user_slug) ? html_escape($comment->user_slug) : $comment->name; ?>" class="img-profile">
                                        </div>

                                        <div class="info">
                                            <h3>
                                              <span class="title"><?= html_escape($comment->title); ?> by <?= isset($comment->user_slug) ? html_escape($comment->user_slug) : $comment->name; ?></span>
                                            </h3>
                                            <div class="body"><?= html_escape($comment->comment); ?></div>
                                            <span class="date"><i class="far fa-clock"></i> <?php echo helper_date_format($comment->created_at); ?></span>
                                        </div>
                                    </div>
                                <?php } } else {?>
                                <div class="comment">                                   
                                    <div class="info">                                        
                                        <div class="body">No comments found.</div>
                                    </div>
                                </div>
                                <?php } ?>
                                <span><div class="paginate comment-pagi"></div></span>
                            </div>
                            <?php if(isset($_SESSION['vr_sess_user_id'])) {?>
                            <div class="button-wrap">
                                <a class="open-form new-comment btn mbBg3" href="#" data-type="comment" data-toggle="modal" data-target="#modal_add_comment"><i class="fa fa-comment-o"></i> Add a new comment</a>
                            </div>
                            <?php } else { ?>
                            <div class="button-wrap">
                                <a class="open-form new-comment btn mbBg3" href="#" data-type="comment" data-toggle="modal" data-target="#modal-login"><i class="fa fa-comment-o"></i> Add a new comment</a>
                            </div>   
                            <?php }?>
                            
                        </div>
                    </div>
                </div>
                <div class="row ad-class-map">
                    <div class="col-sm-12">
                     <!--  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27030.11494696652!2d-96.24549410914683!3d32.12966529500925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8648d4176e84f2b7%3A0x8170ddad0225957d!2sKerens%2C%20TX%2075144%2C%20USA!5e0!3m2!1sen!2sin!4v1649406020070!5m2!1sen!2sin" width="100%" height="445" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> -->
                     <?php $this->load->view('partials/_ad_sidebar'); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="modal_add_comment" class="modal fade modal-center modal-add-comment" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"><i class="icon-close" aria-hidden="true" onclick="close_newsletter_popup()"></i></button>                
                <?php echo form_open('ad-comment-add'); ?>
                    <fieldset>
                        <div class="head">
                            <h1>Add a new comment</h1>
                        </div>
                        <?php if(isset($_SESSION['vr_sess_user_id'])){
                            $user = get_user($_SESSION['vr_sess_user_id']);
                            //print_r($user);
                        ?>
                        <div class="middle">                          

                            <div class="form-group" style="visibility: hidden;display: none;">
                                <label for="authorName">Name<span class="req">*</span></label> 
                                <input id="authorName" type="hidden" class="form-control form-input" name="authorName" value="<?php echo $user->username;?>" required/>
                            </div>

                            <div class="form-group" style="visibility: hidden;display: none;">
                                <label for="authorEmail"><span>E-mail</span><span class="req">*</span></label> 
                                <input id="authorEmail" type="hidden" class="form-control form-input" name="authorEmail" value="<?php echo $user->email;?>" required/>
                            </div>                  
                        
                            <div class="form-group" id="last">
                                <label for="title">Title<span class="req">*</span></label>
                                <input id="title" type="text" class="form-control form-input" name="title" value="" required />
                            </div>
                    
                            <div class="form-group">
                                <label for="body"><span>Message</span><span class="req">*</span></label>
                                <textarea id="body" name="comment" rows="10" class="form-control form-input" required=""></textarea>            
                            </div>
                            <input type="hidden" name="adID" value="<?php echo $ad_detail->id;?>" />
                            <input type="hidden" name="currentUserID" value="<?php echo isset($_SESSION['vr_sess_user_id']) ? $_SESSION['vr_sess_user_id'] : "";?>" />
                            <input type="submit" class="btn mbBg" value="Submit comment"/>
                        </div>
                        <?php } else{ ?>
                        <div class="head">
                            <p>Please login first to make a comment on this ad.</p>
                        </div>
                        <?php } ?>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<div id="modal_contact_seller" class="modal fade modal-center modal-contact-seller" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"><i class="icon-close" aria-hidden="true" onclick="close_newsletter_popup()"></i></button>                
                <?php echo form_open('ad-contact-seller'); ?>
                    <fieldset>
                        <div class="head">
                            <h1>Contact seller</h1>
                        </div>
                        <?php if(isset($_SESSION['vr_sess_user_id'])){
                            $user = get_user($_SESSION['vr_sess_user_id']);
                            //print_r($user);?>
                        <div class="middle">                          

                            <div class="form-group" style="visibility: hidden;display: none;">
                                <label for="authorName">Name<span class="req">*</span></label> 
                                <input id="authorName" type="hidden" class="form-control form-input" name="authorName" value="<?php echo $user->username;?>"/>
                            </div>

                            <div class="form-group" style="visibility: hidden;display: none;">
                                <label for="authorEmail"><span>E-mail</span><span class="req">*</span></label> 
                                <input id="authorEmail" type="hidden" class="form-control form-input" name="authorEmail" value="<?php echo $user->email;?>"/>
                            </div>                  
                        
                            <div class="form-group" id="last" style="visibility: hidden;display: none;">
                                <label for="title">Phone<span class="req">*</span></label>
                                <input id="phone" type="hidden" class="form-control form-input" name="phone" value="<?php echo $user->phone;?>" />
                            </div>
                    
                            <div class="form-group">
                                <label for="body"><span>Message</span><span class="req">*</span></label>
                                <textarea id="body" name="message" rows="10" class="form-control form-input" required=""></textarea>            
                            </div>
                            <input type="hidden" name="adID" value="<?php echo $ad_detail->id;?>" />
                            <input type="hidden" name="currentUserID" value="<?php echo isset($_SESSION['vr_sess_user_id']) ? $_SESSION['vr_sess_user_id'] : "";?>" />
                            <input type="submit" class="btn mbBg" value="Send Message"/>
                        </div>
                        <?php } else{ ?>
                        <div class="head">
                            <p>Please login first to contact seller.</p>
                        </div>
                        <?php } ?>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>