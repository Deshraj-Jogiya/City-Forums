<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!--Post row item-->
        <div class="simple-prod o1 ">
          <div class="simple-wrap">
            <?php if($post->is_featured == 1){ ?>
                <a class="label lab-prem mbBg3" href="<?php echo generate_url('classified-ad/'.$post->title_slug); ?>" title="<?php echo $post->title; ?>">
                    <i class="fas fa-star"></i>
                    <span class="rectangle mbBg3"></span>
                </a>
            <?php } ?>
            <div class="img-wrap">
                <a class="img" href="<?php echo generate_url('classified-ad/'.$post->title_slug); ?>">
                    <?php $this->load->view("post/_post_image", ["post_item" => $post, "type" => "medium"]); ?>                        
                </a>
              
              <div class="publish isGrid"><?php echo helper_date_format($post->created_at); ?></div>

              <?php if(isset($_SESSION['vr_sess_user_id']) && is_user_favourite_ad($_SESSION['vr_sess_user_id'],$post->id)){?>
              <div class="favorite"><a href="<?php echo generate_url('classified-ad/'.$post->title_slug); ?>" class="fi_save_favorite fi_save fi_fav_31 is_favorited"><i class="fas fa-heart"></i><span>Favorited</span></a></div>
              <?php }else{ ?>
              <div class="favorite"><a href="<?php echo generate_url('classified-ad/'.$post->title_slug); ?>" class="fi_save_favorite fi_save fi_fav_31 is_favorite"><i class="fas fa-heart"></i><span>Add to favorite</span></a></div>
              <?php } ?>  
            </div>

            <div class="data">
                <a class="preview" href="#" title="Preview"><i class="fas fa-expand-arrows-alt"></i></a>
                <a class="title" href="<?php echo generate_url('classified-ad/'.$post->title_slug); ?>"><?php echo html_escape(character_limiter($post->title, 55, '...')); ?></a>
                <div class="price isList"><span><?php echo $post->price; ?> <?php echo $post->currency; ?></span></div>
              
                <div class="one-row isGrid ">
                    <div class="price"><span><?php echo $post->price; ?> <?php echo $post->currency; ?></span></div>                
                    <div class="date"><i class="far fa-clock"></i> <?php echo helper_date_format($post->created_at); ?></div> 
                </div>
            </div>

          </div>
        </div>

