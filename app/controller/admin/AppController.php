<?php
namespace App\Controller\Admin;

class AppController extends \App\Controller\AppController
{
    public function __construct()
    {
        parent::__construct();
        $app = \App::getInstance();
        $auth = new \Core\Auth($app->getDb());
        if(!$auth->logged()){
            $this->forbidden();
        }
    }
}