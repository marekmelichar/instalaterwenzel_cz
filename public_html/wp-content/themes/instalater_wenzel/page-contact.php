<?php
/*
* Template Name: Kontakt
*/
// $hero_bg = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
// $banner_img = get_field('banner_img');
// $header_inside_banner = get_field('header_inside_banner');
// $text_inside_banner = get_field('text_inside_banner');

// $tvorba_web_stranek_nadpis = get_field('tvorba_web_stranek_nadpis');
// $tvorba_web_stranek_list = get_field('tvorba_web_stranek_list');

// $vyvoj_web_aplikaci_nadpis = get_field('vyvoj_web_aplikaci_nadpis');
// $vyvoj_web_aplikaci_list = get_field('vyvoj_web_aplikaci_list');

// $ukazky_z_portfolia = get_field('ukazky_z_portfolia');

// $muzu_pomoci_z_vasim_projektem = get_field('muzu_pomoci_z_vasim_projektem');
// $muzu_pomoci_z_vasim_projektem_email = get_field('muzu_pomoci_z_vasim_projektem_email');

get_header() ?>

<div class="row contact-page">
  <div class="column size_100">
    <?php if ( have_posts() ) : ?>
      <?php while ( have_posts() ) : the_post() ?>

        <?php the_content() ?>

      <?php endwhile ?>
    <?php endif ?>
  </div>
</div>

<?php get_footer() ?>
