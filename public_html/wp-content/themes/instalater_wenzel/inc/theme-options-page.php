<?php

/**
 * Theme Options Page
 */
add_action( 'admin_menu', 'mm_add_admin_menu' );
add_action( 'admin_init', 'mm_settings_init' );

function mm_add_admin_menu()
{
	add_options_page( 'Theme Settings', 'Theme Settings', 'manage_options', 'theme_settings',
		'mm_options_page' );
}

function mm_settings_init()
{
	register_setting( 'mm_theme', 'mm_settings', 'save_mm_theme_settings' );

	add_settings_section(
		'mm_copyright_section',
		__( 'Copyright Info', 'mm' ),
		false,
		'mm_theme'
	);

	add_settings_field(
		'copyright_by',
		__( 'Copyright by', 'mm' ),
		'copyright_by_render',
		'mm_theme',
		'mm_copyright_section'
	);

	add_settings_field(
		'copyright_text',
		__( 'Footer text', 'mm' ),
		'copyright_text_render',
		'mm_theme',
		'mm_copyright_section'
	);

	add_settings_section(
		'mm_logo_section',
		__( 'Upload a Logo', 'mm' ),
		false,
		'mm_theme'
	);

	add_settings_field(
		'logo',
		__( 'Choose an Image', 'mm' ),
		'mm_logo_render',
		'mm_theme',
		'mm_logo_section'
	);
}

// sanitize data and upload logo
function save_mm_theme_settings( $data )
{
	$data = array_map('sanitize_text_field', $data);
	$options = extend_array( get_option( 'mm_settings' ), $data );

	// upload logo
	if ( !empty( $_FILES['logo']['tmp_name'] ) && file_is_displayable_image( $_FILES['logo']['tmp_name'] ) )
	{
		$upload = wp_handle_upload( $_FILES['logo'], array('test_form' => false) );
		$options['logo'] = $upload['url'];
	}

	return $options;
}

// copyright by field
function copyright_by_render()
{
	$options = get_option( 'mm_settings' );
	$value = isset($options['copyright_by']) ? $options['copyright_by'] : '';
	?>
	<input type="text" name="mm_settings[copyright_by]" value="<?php echo $value ?>" class="regular-text">
	<?php
}

// copyright text field
function copyright_text_render()
{
	$options = get_option( 'mm_settings' );
	$value = isset($options['copyright_text']) ? $options['copyright_text'] : '';
	?>
	<textarea cols="46" rows="3" name="mm_settings[copyright_text]"><?php echo $value ?></textarea>
	<?php
}

// upload logo
function mm_logo_render()
{
	$options = get_option( 'mm_settings' );
	$logo = isset($options['logo']) ? $options['logo'] : ''; ?>

	<p><input type="file" name="logo"></p>

	<?php if ( $logo ) : ?>

	<p><img src="<?php echo esc_url( $logo ) ?>" alt="mm-logo" class="mm-logo"></p>

<?php endif;
}

// theme options form
function mm_options_page()
{
	?>
	<div class="wrap">
		<h1>Theme Settings</h1>
		<form action="options.php" method="post" enctype="multipart/form-data">
			<?php
			settings_fields( 'mm_theme' );
			do_settings_sections( 'mm_theme' );
			submit_button();
			?>
		</form>
	</div>

	<style>
		.mm-logo {
			padding: 10px;
			margin: 10px 0;
			background: #fff;
			border: 1px solid #ddd;
			border-radius: 6px;
		}
	</style>
	<?php
}
