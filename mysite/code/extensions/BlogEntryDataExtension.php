<?php

class BlogEntryDataExtension extends DataExtension{

    private static $db = array(
        'DevContent' => 'HTMLText'
    );
    private static $has_one = array();
    private static $has_many = array();
    private static $many_many = array();
    private static $many_many_extraFields = array();
    private static $belongs_many_many = array();

    public function updateCMSFields(FieldList $fields){

        $fields->addFieldToTab(
            'Root.DevContent',
            TextareaField::create('DevContent')
                ->setTitle('Dev Content (allows for embeds/js)')
        );

    }

}
