<!DOCTYPE html>
<html <?php language_attributes() ?>>
<head>
	<meta charset="<?php bloginfo('charset') ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="alternate" type="application/rss+xml" title="<?php echo get_bloginfo('sitename') ?> Feed" href="<?php echo get_bloginfo('rss2_url') ?>">
	<?php wp_head() ?>
</head>
<body <?php body_class() ?>>
	<main>
		<header>
			<div class="row">
				<div class="column size_33 name-wrap">
					<a href="/">
						<h1>PAVEL WENZEL</h1>
						<h2><strong>INSTALATÉRSKÉ PRÁCE</strong></h2>
					</a>
				</div>
				<div class="column size_33 logo-wrap">
				</div>
				<div class="column size_33 main-menu">
					<input type="checkbox" id="menu-state" class="menu-state">
					<nav id="mobile-nav">
					  <div class="mobile-nav-content">
					    <ul class="mobile-nav-content-header">
					      <li class="mobile-nav-content-header-item menu-icon">
					        <label class="menu-icon-label" for="menu-state" aria-hidden="true">
					          <span class="hamburger hamburger-top">
					            <span class="hamburger-itself hamburger-itself-top"></span>
					          </span>
					          <span class="hamburger hamburger-bottom">
					            <span class="hamburger-itself hamburger-itself-bottom"></span>
					          </span>
					        </label>
					        <a href="#" class="menu-anchor menu-anchor-open" id="menu-anchor-open">
					          <span class="menu-anchor-label">Open Menu</span>
					        </a>
					        <a href="#" class="menu-anchor menu-anchor-close" id="menu-anchor-close">
										<span class="menu-anchor-label">Close Menu</span>
									</a>
					      </li>
					    </ul>
							<?php wp_nav_menu( array(
	 							'theme_location'  => 'primary',
	 							'menu_class'      => 'primary-menu-list',
	 							'container'       => false
	 						) ) ?>
					  </div>
					</nav>

				</div>
			</div>
		</header>
