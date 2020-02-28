<?php
namespace App\Controller;
use Core\Controller;
use \App;

class UserController extends AppController
{
    public function login()
    {
        $errors = false;
        if(!empty($_POST)){
            $auth = new \Core\Auth(App::getInstance()->getDb());
            if($auth->login($_POST['username'], $_POST['password'])){
                if($_SESSION['auth']->admin === '1'){
                    header('Location: index.php?page=admin/panel');
                } else {
                    header('Location: ?page=console');
                }
            } else {
                $errors = true;
            }
        }
        $form = new \Core\BootstrapForm($_POST);
        $this->render('login', compact('form', 'errors'));
    }
}