<?php
//
// Display a thumbnail
//

$savePath = '../../galleries/';  // Location for stored images

$content_id = isset($_GET['content_id']) ? intval($_GET['content_id']) : 0;  // Get document id
$filename = isset($_GET['filename']) ? urldecode($_GET['filename']) : '';    // Get filename

include_once('config.inc.php');

// Build complete path to thumbnail image
$target = $savePath . $content_id . '/' . $params['thumbsPath'] . $params['thumbPrefix'] . $filename;

if (file_exists($target) && is_file($target))  // Output image
{
	$mtime = filemtime($target);
	$info = @getimagesize($target);
	switch ($info){
		case 1:
			header("Content-type: image/gif");
			break;
		case 2:
			header("Content-type: image/jpeg");
			break;
		case 3:
		default:
			header("Content-type: image/png");
			break;
	}

	if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']) and (strtotime($_SERVER['HTTP_IF_MODIFIED_SINCE']) == $mtime))
	{
		header("Last-Modified: " . gmdate("D, d M Y H:i:s", $mtime) . " GMT", true, 304);
	}
	else
	{
		header("Last-Modified: " . gmdate("D, d M Y H:i:s", $mtime) . " GMT", true, 200);
		header("Content-Length: " . filesize($target));
		echo file_get_contents($target);
    }
	
	exit(0);
}
?>
