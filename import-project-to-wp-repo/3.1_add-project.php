<?php
// add project to db of wp-repository.org

// parameters
$user_type; // 'user' OR 'org'
$user_name; // default = 'wp-repository'
$repo_name; // default = $plugin_slug
$homepage; // default = 'http://wordpress.org/plugins/`. §$plugin_slug . '/'
$maintainer; // github username
if ( $user_type == 'org' && $user_name == 'wp-repository' ) {
    $team; // create team via API
}


?>
