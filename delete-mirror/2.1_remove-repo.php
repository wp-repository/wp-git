<?php
// based on https://github.com/KnpLabs/php-github-api
// Docs: https://github.com/KnpLabs/php-github-api/tree/master/doc

// This file is generated by Composer
require_once 'vendor/autoload.php';

// initialize the sdk
$client = new Github\Client();

// variables
$plugin_slug = ''; // e.g. 'wp-piwik'

// Requires authentication: https://github.com/KnpLabs/php-github-api/blob/master/doc/security.md
// DO auth

// delete repo
$client->api('repo')->delete('wp-mirrors', $plugin_slug); // Get the deletion token
?>
