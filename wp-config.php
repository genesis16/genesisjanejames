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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('REVISR_WORK_TREE', '/home/theal029/jane-james.com.au/blog/'); // Added by Revisr
define('REVISR_GIT_PATH', 'https://github.com/genesis16/genesisjanejames.git'); // Added by Revisr
define( 'DB_NAME', 'theal029_ftpu1' );

/** MySQL database username */
define( 'DB_USER', 'theal029_ftpu1' );

/** MySQL database password */
define( 'DB_PASSWORD', 'K.EcrfPzkbXIx3OrzpO39' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'PyzVZOapYuTP7s4iLNlTnoAE9pC9o4BTvfuqHG1iCSpl6qBRnucTti8u4Jdd3uPH');
define('SECURE_AUTH_KEY',  'nr1ZDxWji0zgFNgasIshjV90xEwsWJcHu3ZWjfFuv7dFbSglxn82rgU7fDkfClcj');
define('LOGGED_IN_KEY',    'mOTZ1rURMwRoFq9RQgZtkFitOXVrNTh1g0pms8aBu54yxIbDy9t1Mr8hkDxV5sC3');
define('NONCE_KEY',        'CvzyFm1sxuWEEwdL3D5zIS13OlTaxC8H9LU2CRcujIUcSMt0uGNT2aaAvM2AAgbZ');
define('AUTH_SALT',        'exufwBOMPKSv463pBxMtTssfpSLZwwbLIKxfXpGUcE1p2XDm4tVyoPM3M8livlAJ');
define('SECURE_AUTH_SALT', 'QXFSJdx0q5jFh6DkWPSyqnGAFaHVd4Za8VCcg5Jc6kghf9WHMGy3rRM0vkCWr9uZ');
define('LOGGED_IN_SALT',   'Ghs1hqwBdGT1yrsgisXbCIrUu28wQmlBfjHGreSVsy1yjP16VaShzr67xcRxHQ0i');
define('NONCE_SALT',       'xzvxqQgZjHzw9REiOr2M89VPMEO8tUprLuixRcByxMhW2y2N5oCAvpjJ6S9TJ8db');

/**
 * Other customizations.
 */
define('FS_METHOD','direct');
define('FS_CHMOD_DIR',0755);
define('FS_CHMOD_FILE',0644);
define('WP_TEMP_DIR',dirname(__FILE__).'/wp-content/uploads');

/**
 * Turn off automatic updates since these are managed externally by Installatron.
 * If you remove this define() to re-enable WordPress's automatic background updating
 * then it's advised to disable auto-updating in Installatron.
 */
define('AUTOMATIC_UPDATER_DISABLED', true);


/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'z6y0_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
