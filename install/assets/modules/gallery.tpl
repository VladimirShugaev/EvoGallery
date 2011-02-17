// <?php
/**
 * EvoGallery
 * 
 * Gallery Management Module
 * 
 * @category	module
 * @version 	1.0 Beta 2
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@properties	&docId=Root Document ID;integer;0
 * @internal	@properties	&imageSize=Image Size;integer;940
 * @internal	@properties	&imageQuality=Image Quality;integer;85
 * @internal	@properties	&imagePrefix=Image Prefix;text;ovl_
 * @internal	@properties	&thumbSize=Thumb Size;integer;175
 * @internal	@properties	&thumbQuality=Thumb Quality;integer;75
 * @internal	@properties	&thumbPrefix=Thumb Prefix;text;th_
 * @internal	@properties	&thumbsPath=Thumb Path;text;thumbs/
 * @internal	@guid 	
 * @internal	@shareparams 1
 * @internal	@dependencies requires files located at /assets/modules/evogallery/
 * @internal	@modx_category Manager and Admin
 */

/**
 * EvoGallery
 * Gallery Management Module
 * Written by Brian Stanback
 * jQuery rewrite and updates by Jeff Whitfield <jeff@collabpad.com>
 */

include_once($modx->config['base_path'] . "assets/modules/evogallery/config.inc.php");
include_once($params['modulePath'] . "classes/maketable.class.inc.php");
include_once($params['modulePath'] . "classes/management.class.inc.php");

if (class_exists('GalleryManagement'))
	$manager = new GalleryManagement($params);
else
	$modx->logEvent(1, 3, 'Error loading Portfolio Galleries management module');

$manager->checkGalleryTable();

echo $manager->execute();