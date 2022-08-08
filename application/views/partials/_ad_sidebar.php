<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php $this->load->view("partials/_ad_spaces", ["ad_space" => "sidebar_top", "class" => "p-b-30"]); ?>
<div class="block">
     <!--        <div class="search-wrap"> 
              
                <div class="box isMobile">
                    <h2>Keyword</h2>
                    <input type="text" class="form-control" name="sPattern" placeholder="What are you looking for?" value="" autocomplete="off">
                    
                </div>


                <div class="box isMobile">
                    <h2>Location</h2>                   
                        <input type="text" id="term2" class="form-control" placeholder="Location" value="" autocomplete="off">                  
                    
                </div>

                <div class="box price-box">
                  <h2>Price</h2>

                  <div class="price">
                    <div class="input-box">
                      <input type="number" class="form-control" name="sPriceMin" value="" size="6" maxlength="6" placeholder="Min">
                      <span>₣</span>
                    </div>

                    <div class="input-box">
                      <input type="number" class="form-control" name="sPriceMax" value="" size="6" maxlength="6" placeholder="Max">
                      <span>₣</span>
                    </div>
                  </div>
                </div>

                <div class="box">
                  <h2>Condition</h2>

                  
                    <select name="condition" class="form-control">
                        <option value="">Choose condition</option>
                        <option value="all">All</option>
                        <option value="new">New</option>
                        <option value="used">Used</option>
                    </select>
                </div>              
 
                <div class="box">
                    <h2>Transaction</h2>

                    
                        <select name="transactional" class="form-control">
                            <option value="">Choose transaction type</option>
                            <option value="all">All</option>
                            <option value="sell">Sell</option>
                            <option value="buy">Buy</option>
                            <option value="rent">Rent</option>
                            <option value="exchange">Exchange</option>
                        </select>
                    
                </div>
           
                <div class="box">
                    <h2>Period</h2>

                    
                        <select name="period" class="form-control">
                            <option value="">Period</option>
                            <option value="all">All</option>
                            <option value="yesterday">Yesterday</option>
                            <option value="last-week">Last week</option>
                            <option value="last-month">Last month</option>
                        </select>                                     
                    
                    </div>
                </div> -->

<div class="block block-block bloc-ss services-ss first odd" id="block-block-50">
    <h2 class="block__title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Advertise</font></font></h2>
    <div class="texte"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
        You can modify or delete your ad at any time after it has been registered. </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
        Remember to add a photo, your ad will be more watched.
        </font></font>
    </div>
    <?php if ($this->auth_check): ?>                    
        <a class="connexion inline-popup phr_theme-processed jquery-once-5-processed" href="<?php echo admin_url().'add-new-ad'; ?>"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&gt; Place an ad</font></font></a>
    <?php else: ?>
    <a href="#" data-toggle="modal" data-target="#modal-login" class="connexion inline-popup phr_theme-processed jquery-once-5-processed"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&gt; Place an ad</font></font></a>                           
    <?php endif; ?> 


</div>
<div class="block block-vi-phr bloc-ss gris last even" id="block-vi-phr-rubriques-pa">
    <div class="block-content group">
        <?php foreach ($adcategories as $value) { 
            if($value->parent_id == 0){ ?>
            <div class="rubrique-pa">
                <a href="<?php echo generate_url('adcategory/'.$value->name_slug); ?>" class="active"><?php echo $value->name;?></a>
            </div>
        <?php } 
        foreach($adcategories as $val){
            if($val->parent_id == $value->id){?>
                <div class="sous-rubrique-pa">
                    <div class="name"><span class="pave"></span><a href="<?php echo generate_url('adcategory/'.$val->name_slug); ?>" class="active"><?php echo $val->name;?></a></div>
                    <div class="nb-pa">[<?php echo get_total_ads_by_category_id($val->id);?>]</div>
                </div>
        <?php } } }?>      
    </div>
</div>
</div>
    <!--Include banner-->
<?php $this->load->view("partials/_ad_spaces", ["ad_space" => "sidebar_bottom", "class" => ""]); ?>