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
    $page = 'panel';
}

// AUTH
$auth = new \Core\Auth($app->getDb());
if(!$auth->logged()){
    $app->forbidden();
}

ob_start();
if('add' === $page){
    require ROOT . '/pages/admin/add_game.php';
} elseif('panel' === $page){
    require ROOT . '/pages/admin/panel.php';
} elseif('edit' === $page){
    require ROOT . '/pages/admin/edit.php';
} elseif('delete' === $page){
    require ROOT . '/pages/admin/delete.php';
}
$content = ob_get_clean();
require ROOT . '/pages/templates/default.php';