<?php
/*
* Template Name: Reference
*/


get_header() ?>

<div class="row reference-content">
  <div class="column size_100">
    <?php if ( have_posts() ) : ?>
		  <?php while ( have_posts() ) : the_post() ?>

		    <?php the_content() ?>

		  <?php endwhile ?>
		<?php endif ?>
  </div>
</div>



<?php get_footer() ?>
