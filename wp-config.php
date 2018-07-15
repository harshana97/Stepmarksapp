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
define('DB_NAME', 'stepmarks_wp918');

/** MySQL database username */
define('DB_USER', 'stepmarks_wp918');

/** MySQL database password */
define('DB_PASSWORD', 'p@uS1J1-2O');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'vyqgyric8rcn5gggtgkh0clvgpgq7jhb183musvkkbbksp8fn5dezhogkzzj7woj');
define('SECURE_AUTH_KEY',  'cdnw4yeutkagdzydedeyz3d8jsypmwy99xvcbsnmh2ehw7z9imd0aic3s0nhceow');
define('LOGGED_IN_KEY',    'jwlmbx9h1ywnquhkyaqnsmbdhpizkexpqb8v2rupkjac1hmwu5abn0sitakalale');
define('NONCE_KEY',        's9csq4zll2bfziilkjjtgr0dl0aw4donehy9zqosf8h2vk106fhk6dtyxup4rpgq');
define('AUTH_SALT',        '0rbtffeoxcphlatbcu10pbvshk2oedqvipuqtthfqif52wjmg5h5eeslxsqmyzah');
define('SECURE_AUTH_SALT', 'mefzvwpps1ff1jnjd2txjthlbhmifi3fhbqyftzblgi9diornwwvgxk8g9ggoikz');
define('LOGGED_IN_SALT',   '3rxqkj23oz4tknqkury5ckkupodrxyaufqfufyhvsvzwsmlxfzotxuivmufjfys9');
define('NONCE_SALT',       'lt4lcm4cuwczixyp7fuk3fqawtsulyqwiht3a6ylgrtsiwb5n7hiji0qjne3qbts');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpgp_';

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
