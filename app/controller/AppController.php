<?php
namespace App\Controller;

class AppController extends \Core\Controller
{
    protected $template = 'default';

    // Initialize variables named after the argument to pass it to the views
    protected function load_model($model_name)
    {
        $this->$model_name = \App::getInstance()->getTable($model_name);
    }

    public function __construct()
    {
        $this->view_path = ROOT . '/app/views/';
    }
}