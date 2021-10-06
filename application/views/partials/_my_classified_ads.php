<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php
$i = 1;
$last_id = 1;
foreach ($posts as $post):
?>
    <div class="col-md-4 col-sm-6 col-xs-6">
        <?php 
            $this->load->view("post/_ad_item_horizontal", ["post" => $post, "show_label" => true]);
            $last_id = $post->id;
        ?>
    </div>
<?php $i++; endforeach; ?> 

<?php if ($i == 0): ?>
    <p class="text-center">
        <?php echo trans("no_records_found"); ?>
    </p>
<?php endif; ?>                                  