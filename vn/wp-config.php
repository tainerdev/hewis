<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'hewis');

/** MySQL database username */
define('DB_USER', 'hewis_admin');

/** MySQL database password */
define('DB_PASSWORD', 'hewis_password');

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
define('AUTH_KEY',         '9^gHmN7Ae8`Fpbv($!6FJ_/<V+Rf-=>*g-$0nJA,%yIq,p^:Wu9+d6?ZSc( `_-L');
define('SECURE_AUTH_KEY',  '`z-S_!-Wrr!7x4$Pa78B|qzj1+OG7tse0YI 6y-UMwB@EX{Jj`HbR?-=d@z>6R16');
define('LOGGED_IN_KEY',    'gzYop/]-=E!R<C~7|2ACB6K]qwhTM2TX`+qSMm8i0EA5YK7#eFoujHYEuz-G2Yp#');
define('NONCE_KEY',        'd`eR~+pkel#6y0@BAY>Ezi@,9|/I}tI#Pd}/}H3S3fF(MR3<K(;1Z#+7NIm73U1~');
define('AUTH_SALT',        'vUg+hDL4h&!iTgUa4qv}=}vdt^]Z%3Ue$6j2sE;& ZGP<|f;>T&{^b&NEgzoeiJ7');
define('SECURE_AUTH_SALT', 'V!CX&{HWT<,XFC./i`Ut{D/~r*~onn_,04h-g6)Icu#FX^PB^bg:(E[9hqZ=?$uT');
define('LOGGED_IN_SALT',   'apE<x,`qkMK1iPWE+I3pC|aa;G]|2q%*_7 T.7MvZ>DKZ]Ayn)wLJ,.xW<(#--Oc');
define('NONCE_SALT',       'Arb_Uq5@`8!g 7g]jD93VL a/W=Z6eKL|3+1S<l:<=O,s>PsPkb.97y2`qCq~md)');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'vn_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
