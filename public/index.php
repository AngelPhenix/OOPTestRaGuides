<?php
define('ROOT', dirname(__DIR__));
require ROOT . '/app/App.php';
spl_autoload_register(function($class) {
    include ROOT . '/' . str_replace('\\', '/', $class) . '.php';
});

App::load();
$app = App::getInstance();

if(isset($_GET['page'])){
    $page = $_GET['page'];
} else {
    $page = 'console';
}

if('console' === $page){
    $controller = new \App\Controller\PostController();
    $controller->consoles();
} elseif ('game' === $page){
    $controller = new \App\Controller\PostController();
    $controller->games();
} elseif ('achievement' === $page){
    $controller = new \App\Controller\PostController();
    $controller->achievements();
} elseif ('login' === $page){
    $controller = new \App\Controller\UserController();
    $controller->login();
} elseif  ('admin/panel' === $page){
    $controller = new \App\Controller\Admin\PostController();
    $controller->index();
} elseif ('admin/edit' === $page){
    $controller = new \App\Controller\Admin\PostController();
    $controller->edit();
} elseif ('admin/delete' === $page){
    $controller = new \App\Controller\Admin\PostController();
    $controller->delete();
} elseif ('demo' === $page){
    $controller = new \App\Controller\DemoController();
    $controller->index();
}