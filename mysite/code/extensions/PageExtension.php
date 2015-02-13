<?php
	
class PageExtension extends DataExtension {
	
	private static $db = array(
		'MarkdownContent'=>'Markdown'
	);
	
	public function updateCMSFields(FieldList $fields) {
		
		$editor = new MarkdownEditor('MarkdownContent', 'Page Content (Markdown)');
        $editor->setRows(15); //optional, set number of rows in CMS
        $editor->setWrapMode(true); //optional, turn on word wrapping
        $fields->addFieldToTab("Root.Main", $editor);
		
	}
	
}