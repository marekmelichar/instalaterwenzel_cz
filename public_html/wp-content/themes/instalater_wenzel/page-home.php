<?php
/*
* Template Name: Hlavni strana
*/
// $hero_bg = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
$banner_img = get_field('banner_img');
// $header_inside_banner = get_field('header_inside_banner');
$text_inside_banner = get_field('text_inside_banner');
$call_to_action_in_banner = get_field('call_to_action_in_banner');

$offer_nadpis = get_field('offer_nadpis');
$offer_text = get_field('offer_text');
$offer_img = get_field('offer_img');

$offer_3_cols_bg = get_field('offer_3_cols_bg');
$offer_3_cols_nadpis_1 = get_field('offer_3_cols_nadpis_1');
$offer_3_cols_text_1 = get_field('offer_3_cols_text_1');
$offer_3_cols_nadpis_2 = get_field('offer_3_cols_nadpis_2');
$offer_3_cols_text_2 = get_field('offer_3_cols_text_2');
$offer_3_cols_nadpis_3 = get_field('offer_3_cols_nadpis_3');
$offer_3_cols_text_3 = get_field('offer_3_cols_text_3');

$other_args_text = get_field('other_args_text');

// $tvorba_web_stranek_nadpis = get_field('tvorba_web_stranek_nadpis');
// $tvorba_web_stranek_list = get_field('tvorba_web_stranek_list');

// $vyvoj_web_aplikaci_nadpis = get_field('vyvoj_web_aplikaci_nadpis');
// $vyvoj_web_aplikaci_list = get_field('vyvoj_web_aplikaci_list');

// $ukazky_z_portfolia = get_field('ukazky_z_portfolia');

// $muzu_pomoci_z_vasim_projektem = get_field('muzu_pomoci_z_vasim_projektem');
// $muzu_pomoci_z_vasim_projektem_email = get_field('muzu_pomoci_z_vasim_projektem_email');

get_header() ?>

<section class="position-relative z-1">
  <div class="banner" style="background-image: url(<?php echo $banner_img['url'] ?>); background-repeat: no-repeat; background-size: cover; height: 450px; background-position: 50% 0;">
    
    <?php if ( !empty($text_inside_banner) ) : ?>
      <h1><?php echo $text_inside_banner; ?></h1>
    <?php endif; ?>
    <?php if ( !empty($call_to_action_in_banner) ) : ?>
      <h2><i class="phone-icon ion-ios-telephone"></i><?php echo $call_to_action_in_banner; ?></h2>
    <?php endif; ?>
  </div>
</section>

<section class="offer-services">
  <div class="row">
    <div class="container">
      <div class="column size_50">
        <h2><?php echo $offer_nadpis; ?></h2>
        <?php echo $offer_text; ?>
      </div>
      <div class="column size_50">
        <div class="offer-image">
          <img src="<?php echo $offer_img['url'] ?>" />
        </div>
      </div>
    </div>
  </div>
</section>

<section class="offer-3-cols" style="background-image: url(<?php echo $offer_3_cols_bg['url'] ?>); background-repeat: no-repeat; background-size: cover; height: 450px; background-position: 50% 0; background-attachment: fixed;">
  <div class="row">
    <div class="column size_33">
      <i class="icon-spanner ion-wrench"></i>
      <h2><?php echo $offer_3_cols_nadpis_1; ?></h2>
      <div class="offer-3-cols-text"><?php echo $offer_3_cols_text_1; ?></div>
    </div>
    <div class="column size_33">
      <i class="icon-thermometer ion-thermometer"></i>
      <h2><?php echo $offer_3_cols_nadpis_2; ?></h2>
      <div class="offer-3-cols-text"><?php echo $offer_3_cols_text_2; ?></div>
    </div>
    <div class="column size_33">
      <i class="icon-flame ion-flame"></i>
      <h2><?php echo $offer_3_cols_nadpis_3; ?></h2>
      <div class="offer-3-cols-text"><?php echo $offer_3_cols_text_3; ?></div>
    </div>
  </div>
</section>

<section class="other-args">
  <div class="row">
    <div class="column size_100">
      <div class="other-args-text"><?php echo $other_args_text; ?></div>
    </div>
  </div>
</section>

<!--<section class="offer-javascript-services">
  <div class="row">
    <div class="column size_50">
      <div class="browser"></div>
    </div>
    <div class="column size_50 text-right">
      <h2><?php echo $vyvoj_web_aplikaci_nadpis; ?></h2>
      <?php echo $vyvoj_web_aplikaci_list; ?>
    </div>
  </div>
</section>-->

<!--<section id="full-width-slider">
  <h2><?php echo $ukazky_z_portfolia; ?></h2>
  <div id="centeringDiv">
     <div id="prev"><i id="rotateIconPrev" class="icon ion-ios-arrow-left"></i></div>
      <div id="current">
        <p>
          <img data-index="3" src="<?php echo get_template_directory_uri(); ?>/images/slider/3.png" alt="">
        </p>
      </div>
    <div id="next"><i id="rotateIconNext" class="icon ion-ios-arrow-right"></i></div>
    <ul>
      <li><img data-index="1" src="<?php echo get_template_directory_uri(); ?>/images/slider/1.png" alt=""></li>
      <li><img data-index="2" src="<?php echo get_template_directory_uri(); ?>/images/slider/2.png" alt=""></li>
      <li><img data-index="3" src="<?php echo get_template_directory_uri(); ?>/images/slider/3.png" alt=""></li>
      <li><img data-index="4" src="<?php echo get_template_directory_uri(); ?>/images/slider/4.png" alt=""></li>
      <li><img data-index="5" src="<?php echo get_template_directory_uri(); ?>/images/slider/5.png" alt=""></li>
      <li><img data-index="6" src="<?php echo get_template_directory_uri(); ?>/images/slider/6.png" alt=""></li>
    </ul>
  </div>
</section>-->

<!--<section class="container-fluid part-of-your-project">
  <div class="row">
    <div class="column size_100 text-center">
      <h2><?php echo $muzu_pomoci_z_vasim_projektem; ?></h2>
      <h3><span class="icon ion-ios-email-outline" aria-hidden="true"></span><a href="mailto:<?php echo $muzu_pomoci_z_vasim_projektem_email; ?>"><?php echo $muzu_pomoci_z_vasim_projektem_email; ?></a></h3>
    </div>
  </div>
</section>-->

<?php get_footer() ?>
