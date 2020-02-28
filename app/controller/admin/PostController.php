<?php
namespace App\Controller\Admin;

class PostController extends AppController
{
    public function __construct()
    {
        parent::__construct();
        $this->load_model('users');     // $this->users          Table with all users
    }

    public function index()
    {
        $users = $this->users->all();
        $this->render('admin/panel', compact('users'));
    }

    public function edit()
    {
        if(!empty($_POST)){
            $result = $this->users->update($_GET['id'], [
            'username' => $_POST['username'], 
            'admin' => $_POST['admin']
            ]);
            if($result){
                return $this->index();
            }
        }
        $user = $this->users->get_by_id($_GET['id']);
        $form = new \Core\BootstrapForm($user);
        $this->render('edit', compact('form'));
    }

    public function delete()
    {
        if(!empty($_POST)){
            $result = $this->users->delete($_POST['id']);
            return $this->index();
        }
        $form = new \Core\BootstrapForm($user);
    }
}