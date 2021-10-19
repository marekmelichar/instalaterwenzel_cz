<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
//define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/home/customer/www/instalaterwenzel.cz/instalaterwenzel.marekmelichar.cz/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', 'marekmel_wp544');

/** MySQL database username */
define('DB_USER', 'marekmel_wp544');

/** MySQL database password */
define('DB_PASSWORD', 'oi60[S!8Pp');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'yyzra4zg5svti74xnshcdketfepebqpnbarcxufmarclyp1y0rnu6r4qqkdn1vex');
define('SECURE_AUTH_KEY',  's5d8ropl8bndagm1dqutasp55thsdl1kefuy6wu4yl5e8zt1toqvfgli0kylkrwu');
define('LOGGED_IN_KEY',    'si4lwesl4oayxaovq5qrqv2wsocvsdgpjeejmiuqa92hp0kiyoyhzfjewtt4icez');
define('NONCE_KEY',        'velnuzc9ynopsthws1cwwveoifcg8zdduofktemydfbl0nmphx2qh8lxnwm53cgw');
define('AUTH_SALT',        'oyogm5hh1f6esxstzal5w3xz0qxfxv98rrdy4bsj0b5zjdfhklstqerbxkepvx0y');
define('SECURE_AUTH_SALT', 'rp6iyxzh3pwxjjv6tonwjgzfynkgpzrrlhlmc5m76ffsmiabeorit6ma4qwhhndi');
define('LOGGED_IN_SALT',   'urabszq2bef6gy6eq8xb7dxxuskojsgd1k3yrrbnoffwzmwdxe6pw2nmdjcmueoz');
define('NONCE_SALT',       'dtpembguutaprvyzfoceu6j3uc3sfqdqzidetkfeanwbzs6xkeiyusndyrfht2ox');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');



@include_once('/var/lib/sec/wp-settings.php'); // Added by SiteGround WordPress management system
