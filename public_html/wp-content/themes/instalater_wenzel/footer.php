
	</main>
	<footer class="container-fluid footer">
		<div class="row">
			<div class="column size_33 footer-menu">
				<?php wp_nav_menu( array(
					'theme_location'  => 'footer',
					'menu_class'      => 'footer-menu-list',
					'container'       => false
				) ) ?>	
			</div>
			<div class="column size_33 text-center footer-social">
				<a class="icon-facebook" href="https://www.facebook.com/Instalatérské-práce-1845433692337103/"><i class="ion-social-facebook"></i></a>
			</div>
			<div class="column size_33 text-center footer-contact">
				<h3><i class="icon-phone ion-ios-telephone"></i>+420 602 110 943</h3>
			</div>
		</div>
	</footer>

	<?php wp_footer() ?>
</body>
</html>
