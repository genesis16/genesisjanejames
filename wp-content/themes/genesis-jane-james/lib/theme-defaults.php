<?php
/**
 * Genesis jane james.
 *
 * This file adds the default theme settings to the Genesis Sample Theme.
 *
 * @package Genesis jane james
 * @author  Jane James
 * @license GPL-2.0-or-later
 * @link    alphaomegadigital.com.au
 */

add_filter( 'simple_social_default_styles', 'genesis_jane_james_social_default_styles' );
/**
 * Set Simple Social Icon defaults.
 *
 * @since 1.0.0
 *
 * @param array $defaults Social style defaults.
 * @return array Modified social style defaults.
 */
function genesis_jane_james_social_default_styles( $defaults ) {

	$args = genesis_get_config( 'simple-social-icons-settings' );

	return wp_parse_args( $args, $defaults );

}
