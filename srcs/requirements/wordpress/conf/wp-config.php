<?php

// ** MySQL settings - You can get this info from your web host ** //
define( 'DB_NAME', getenv('MARIA_DATABASE'));
define( 'DB_USER', getenv('MARIA_USER'));
define(	'DB_PASSWORD', getenv('MARIA_PASSWORD'));
define(	'DB_HOST', 'mariadb');
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

/**Authentication unique keys and salts.*/
define('AUTH_KEY',         'ABn+JBV) 5;bU Ew.TFoiPFAlrn0;O_u=(RbT0`G?S<]2/)<Q<_tOhjfXEi{p0mf');
define('SECURE_AUTH_KEY',  '4hy3Ul6`WTcU)]f)/j?y5.G+|&F0Bt#>iYXe|UAT!JjPJ%i!-`Ro!l=zJb@y|+;W');
define('LOGGED_IN_KEY',    '~s|5RjbT+`&4&JJ2-MMd~V&Gg&g,ATXOT`%8>n4*Dhv]LjY$z;+#XV{v/6vD# BA');
define('NONCE_KEY',        'A1[z:G.1-e}JFK?4jRZK9%kYds02XMW0 r-p}agJ^~|2l#<AF{5r+Z=EDOz411rB');
define('AUTH_SALT',        'V&T,S]#L>{j|9d_ow,S*6-H/h6B0xPtS0=4CYDhV#e{WvI`_Oq|P5m]xm+rOm-0+');
define('SECURE_AUTH_SALT', 'j=odd-+T[=)RB/;Toi+gho#o|tD`&0[c<kyQ#Nc]N9r:WlJWm|Mr_o7)1mCTe4fA');
define('LOGGED_IN_SALT',   '-qG<+sD6vNV9*dMsW?~dZF$+TjFhh$b1Wx^F:>?)XG7O*$1hz`.``qWeMq/TlqmD');
define('NONCE_SALT',       'P[Ka6Af&3^U&BXkDW/tg|A+p/u!h|]@CLyQ& :DP)qT`MtY}|GPf|iB&UuKi5[Pt');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

define('CONCATENATE_SCRIPTS', false);

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';