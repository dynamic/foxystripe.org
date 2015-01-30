<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
		// path variables
		$themeDir = SSViewer::get_theme_folder();
		$config = SiteConfig::current_site_config();
		
		$scripts = array(
			'framework/thirdparty/jquery/jquery.min.js',
			'flexslider/thirdparty/flexslider/jquery.flexslider-min.js',
			$themeDir . '/javascript/jquery.lazyload.min.js',
			$themeDir . '/javascript/lazy_init.js',
			'userforms/thirdparty/jquery-validate/jquery.validate.js',
			'userforms/javascript/UserForm_frontend.js',
			$themeDir . '/javascript/form-update.js',
			$themeDir . '/javascript/menu_init.min.js',
			$themeDir . '/javascript/extras.js',
			$themeDir . '/javascript/tracking-universal.js'
		);

		Requirements::combine_files('scripts.js', $scripts);


		// Add the combined styles.
		$styles = array(
			$themeDir . '/css/base.css',
			'flexslider/thirdparty/flexslider/flexslider.css',
			$themeDir . '/css/flexslider.css',
			$themeDir . '/css/layout.css',
			$themeDir . '/css/typography.css',
			$themeDir . '/css/form.css',
			$themeDir . '/css/skeleton.css',
		);

		Requirements::combine_files('styles.css', $styles);


		// print css
		Requirements::css($themeDir . '/css/print.css', 'print');

		// blocked
		Requirements::block('framework/thirdparty/jquery/jquery.js');
		Requirements::block('flexslider/thirdparty/flexslider/flexslider.css');

		// Extra folder to keep the relative paths consistent when combining.
		Requirements::set_combined_files_folder(ASSETS_DIR . '/_combined');

	}

}
