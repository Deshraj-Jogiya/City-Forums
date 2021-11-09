<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php $subcategories = get_subcategories($category->id, $this->categories); ?>

<div class="col-sm-12 col-xs-12">

    <div class="row">

        <section class="section section-block-4">

            <div class="section-head" style="border-bottom: 2px solid <?php echo html_escape($category->color); ?>;">

                <h4 class="title" style="background-color: <?php echo html_escape($category->color); ?>">

                    <a href="<?php echo generate_category_url($category); ?>" style="color: <?php echo html_escape($category->color); ?>">

                        <?php echo html_escape($category->name); ?>

                    </a>

                </h4>

                <!--Include subcategories-->

                <?php $this->load->view('partials/_block_subcategories', ['category' => $category, 'subcategories' => $subcategories]); ?>

            </div>

            <div class="section-content">

                <div class="tab-content pull-left">

                    <div role="tabpanel" class="tab-pane fade in active" id="all-<?php echo html_escape($category->id); ?>">

                        <div class="row">

                            <div class="va-carrousel-section">
                                <div class="va-whitewrap">
                                    <div id="va_container<?php echo html_escape($category->id); ?>">
                                        <button class="deals-scroll-left deals-paddle">
                                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left"
                                                class="svg-inline--fa fa-chevron-left fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                                viewBox="0 0 320 512">
                                                <path fill="currentColor"
                                                    d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z">
                                                </path>
                                            </svg>
                                        </button>

                                        <div class="va-carrousel-flexbox">
                                            <?php $category_posts = get_posts_by_category_id($category->id, $this->categories);

                                            $i = 0;

                                            if (!empty($category_posts)):

                                                foreach ($category_posts as $post):

                                                    if ($i < 10):?>

                                                        <div class="va-card">

                                                            <?php $this->load->view("post/_post_item_mid", ["post" => $post]); ?>

                                                        </div>

                                                    <?php endif;

                                                    $i++;

                                                endforeach;

                                            endif; ?>                                
                                        </div>
                                        <button class="deals-scroll-right deals-paddle">
                                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right"
                                                class="svg-inline--fa fa-chevron-right fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                                viewBox="0 0 320 512">
                                                <path fill="currentColor"
                                                    d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z">
                                                </path>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>



                    <?php if (!empty($subcategories)):

                        foreach ($subcategories as $subcategory): ?>

                            <div role="tabpanel" class="tab-pane fade in " id="<?php echo html_escape($subcategory->name_slug); ?>-<?php echo html_escape($subcategory->id); ?>">

                                <div class="row">

                                    <div class="va-carrousel-section">
                                        <div class="va-whitewrap">
                                            <div id="va_container<?php echo html_escape($category->id); ?>">
                                                <button class="deals-scroll-left deals-paddle">
                                                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left"
                                                        class="svg-inline--fa fa-chevron-left fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                                        viewBox="0 0 320 512">
                                                        <path fill="currentColor"
                                                            d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z">
                                                        </path>
                                                    </svg>
                                                </button>

                                                <div class="va-carrousel-flexbox">
                                                <?php $category_posts = get_posts_by_category_id($subcategory->id, $this->categories);

                                                $i = 0;

                                                if (!empty($category_posts)):

                                                    foreach ($category_posts as $post):

                                                        if ($i < 10):?>

                                                            <div class="va-card">

                                                                <?php $this->load->view("post/_post_item_mid", ["post" => $post]); ?>

                                                            </div>

                                                        <?php endif;

                                                        $i++;

                                                    endforeach;

                                                endif; ?>

                                                </div>
                                                <button class="deals-scroll-right deals-paddle">
                                                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right"
                                                        class="svg-inline--fa fa-chevron-right fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                                        viewBox="0 0 320 512">
                                                        <path fill="currentColor"
                                                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z">
                                                        </path>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        <?php endforeach;

                    endif; ?>



                </div>

            </div>

        </section>

    </div>

</div>

<script type="text/javascript">
      var isAnimating = false;

        function scrollLeftAnimate(elem, unit) {

            if (!elem || isAnimating) {
                //if element not found / if animating, do not execute slide
                return;
            }

            var time = 300; // animation duration in MS, the smaller the faster.
            var from = elem.scrollLeft; // to continue the frame posistion
            var aframe =
                10; //fraction of frame frequency , set 1 for smoothest  ~ set 10++ for lower FPS (reduce CPU usage)
            isAnimating = true; //if animating prevent double trigger animation

            var start = new Date().getTime(),
                timer = setInterval(function () {
                    var step = Math.min(1, (new Date().getTime() - start) / time);
                    elem.scrollLeft = ((step * unit) + from);
                    if (step === 1) {
                        clearInterval(timer);
                        isAnimating = false;
                    }
                }, aframe);
        }



        function initDealCarrousel(dealCarrouselID) {
            var target = document.querySelector("#" + dealCarrouselID + " .va-carrousel-flexbox");
            var cardOutterWidth;
            var maxCarrouselScroll;

            function updateUpaCarrouselInfo() {
                cardOutterWidth = document.querySelector("#" + dealCarrouselID + " .va-card").offsetWidth; //you can define how far the scroll
                maxCarrouselScroll = (document.querySelectorAll("#" + dealCarrouselID + " .va-card").length *
                        cardOutterWidth) - document.querySelector("#" + dealCarrouselID + " .va-carrousel-flexbox")
                    .clientWidth;
            }

            document.querySelector("#" + dealCarrouselID + " .deals-scroll-left").addEventListener("click",
                function () {
                    updateUpaCarrouselInfo(); //in case window resized, will get new info
                    if (target.scrollLeft > 0) {
                        scrollLeftAnimate(target, -cardOutterWidth * 2);
                    }
                }
            );

            document.querySelector("#" + dealCarrouselID + " .deals-scroll-right").addEventListener("click",
                function () {
                    updateUpaCarrouselInfo(); //in case window resized, will get new info 
                    if (target.scrollLeft < maxCarrouselScroll) {
                        scrollLeftAnimate(target, cardOutterWidth * 2);
                    }
                }
            );
        }
        // Initiate the container with ID
        initDealCarrousel('va_container<?php echo html_escape($category->id); ?>'); //carrousel ID
</script>