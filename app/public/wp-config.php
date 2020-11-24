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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

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
define('AUTH_KEY',         'kdMgH84fME1IuxHng1pfuGkJ6GsPCVdQ5CgO3wfwco4v4RTDFI1mcAu58VzthpBKsNKvE4rVrKqiBF5Ydv+qfw==');
define('SECURE_AUTH_KEY',  '6ocEBu1TBAEWofHUFlmNEZzK/v6QLeU/w0zy6ISt6+h9cdGc3ntc/vnjqki7RhCGtXD7mp4EGnq5XI6P53hp2Q==');
define('LOGGED_IN_KEY',    'D3Onqs6REKy02N5OO1OA+ZbTxGY/m71dKjuc5p0O6nC3QjOzf8dzcj9x1+YDSMTPGmCpbLq7LwXS316IUkWKeg==');
define('NONCE_KEY',        'ekUb51vFyK4yYzS9pho6PQdyHlrCbcrJ39uQCibj3ZJEIkiY9CeBrsKnfQssoQ157wsO0Z+OHg8Jg3NvTMH9aA==');
define('AUTH_SALT',        'i2qO1GNxrVfEJPs4LnujnWyP4SFCyjsvyWfzb695H9idMZUhp7CyHoK+MyyRw95RO8kTFD8dTYp4+TC326vREA==');
define('SECURE_AUTH_SALT', 'qByveIffGa9JpNUNKxGR9kqZL3vO0HTKZVncCvX3XxyoJqn4A3MdEWyPRdb9huMIFrBo/ydYC2k8RUs8gm0jeQ==');
define('LOGGED_IN_SALT',   '0yTWSMYijHB8Q27apqL5FeBJz++SsbP+vM6cJXEArEkjRmDyFYIFELT+eARCnQMrIIa5pCNC/REnje+vEirAnQ==');
define('NONCE_SALT',       'KAR6BYT00PbJo4mD3IIThhsLcKTeM2NhP0tFTlHxGKoLPK0uYykubxfMaoe7YWzIH88IhTS4/P0xg0+aUHvsyw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
