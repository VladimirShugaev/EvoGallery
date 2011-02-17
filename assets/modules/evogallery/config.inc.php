<?php
$params['debug'] = isset($debug) ? $debug : 0;
	// Debug - Default: 0
	
$params['imageSize'] = isset($imageSize) ? $imageSize : 940;
	// Max dimension, in pixels, for the full-size images

$params['imageQuality'] = isset($imageQuality) ? $imageQuality : 85;
	// Quality for generated images (1-100)
	
$params['imagePrefix'] = isset($imagePrefix) ? $imagePrefix : 'ovl_';
	// Prefix for generated image name  - Default: ''

$params['thumbSize'] = isset($thumbSize) ? $thumbSize : 175;
	// Max dimension, in pixels, for the generated thumbnail images

$params['thumbQuality'] = isset($thumbQuality) ? $thumbQuality : 75;
	// Quality for generated thumbnails (1-100)
	
$params['thumbPrefix'] = isset($thumbPrefix) ? $thumbPrefix : 'th_';
	// Prefix for generated thumbnail name - Default: ''
	
$params['docId'] = isset($docId) ? $docId : 0;
	// Id of the document root to begin listing galleries for (0 for all documents)

$params['savePath'] = $modx->config['base_path'] . 'assets/galleries';
	// Full system path to location of product images

$params['modulePath'] = $modx->config['base_path'] . 'assets/modules/evogallery/';
	// Path to the module directory

$params['thumbsPath'] = isset($thumbPath) ? $thumbPath : 'thumbs/'; 
	// Path to the thumb directory - Default: 'thumbs/'
?>