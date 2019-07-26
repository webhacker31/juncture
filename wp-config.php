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

// ** MySQL settings ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'juncture' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          ',9|A!3[e t|4J#kl8uLC?g.RPf;/{1ti6XR|$[`b7Na_hSe|^WEAp<}/R6;X}CsJ' );
define( 'SECURE_AUTH_KEY',   'j`uo90Fj#eOL^3RRh<rgAxytp!M~1f>J`ND-}YfXG qtDuP#2E&]r)ks]Y<%5FWM' );
define( 'LOGGED_IN_KEY',     'o*[-;P;e_Acy+fcQyZ4IVb/8py8~fNt_uhG frKgT4E9A~VAoH(DBtv{P1<.9l3u' );
define( 'NONCE_KEY',         '%*L^M{1|09VPz@d>2dS$trhY@o{gEE-/2QX-Uu$HmiEHUoYRb=Htcyxgy_V2_LzU' );
define( 'AUTH_SALT',         'M_J%X>u]+bH@2QHjRo&T`L1s ZF(J ^9;mjuIcx]5pk^m0PR7Cah%&Ob4Dh|VX+X' );
define( 'SECURE_AUTH_SALT',  '#u}lu|v03DH}[7T~gwMYe5Z[lpG.RUj$%mWzIIgb8y=<btXt) g^d~J{t(L>SL`E' );
define( 'LOGGED_IN_SALT',    '#d#f-#~2qkmLf_p|Pmn`D?[<@+ra*]$d<X.b+:ng.>%ov6Fh$$2aA]f{oL`txC`W' );
define( 'NONCE_SALT',        ']y,KarjoXDGd~ QH%9*Ol$XS# S,r13>2iI!#=f0Hj$hKr=4-hjTU9:#N2HhU;@q' );
define( 'WP_CACHE_KEY_SALT', 'Z.,%OnXfyk]Z2&8/QsJC=uWofa#r.s%: xn01d.b>^,*dc<8qN%-Fpc[n n%Z#B6' );

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = '274_';



define( 'AUTOSAVE_INTERVAL',    300  );
define( 'WP_POST_REVISIONS',    5    );
define( 'EMPTY_TRASH_DAYS',     7    );
define( 'WP_AUTO_UPDATE_CORE',  true );
define( 'WP_CRON_LOCK_TIMEOUT', 120  );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';