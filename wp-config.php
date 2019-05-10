<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache

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
define( 'DB_NAME', 'juncture' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ';PE$b3-^CFAS|Q&i*wt]:U:s@i*Ex LC`~n+)H.o+Dnh.t:?_Ccgd|hvQMWR9E!Z' );
define( 'SECURE_AUTH_KEY',  'E3V,|c1xe `#`}*&7f[t!)pk}&**QoLcG6LLR7*<DP(j)3iXbwbY!GsNYJ*{c0st' );
define( 'LOGGED_IN_KEY',    '2Y;r6 3z/Zq/`s!&QTIOpVH[u0B.vcShg_*?x;o8U09lN.I%Cn+`)fyh#?ld^];I' );
define( 'NONCE_KEY',        '-5hZmTsqWjRIG3}VG@g47Ia2;`d]^#kjp`0!^$FQFs8K.fHSLcW<{(TMQ`Iu*=5A' );
define( 'AUTH_SALT',        'nhn<%xur/Ng:J]y^$f83(oW9BAtWlhBWI L8<Opw}Bi$?@F>-iQZpaS*NG8E?Eej' );
define( 'SECURE_AUTH_SALT', ',;/EFk|u75jPt]nca7MDo1/2sZeK<P|/T4hV,sI~_mcED.{#n[O/51aMNoJLR[Ts' );
define( 'LOGGED_IN_SALT',   'ZfCg}m6 v0qmh,0lm`,XK)k)Cu%nm}nVV$udSyw.fBT0`AV}%w@VNkdpRJV.ZALf' );
define( 'NONCE_SALT',       'b<,lJIx}d^|@ld_c8|s5 uJrFkP4b(7 t#R-s#CvX9R/o@GSDtHH[>#V15qK^`_i' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
