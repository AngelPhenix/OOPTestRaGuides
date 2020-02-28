<?php

use Core\Config;
use Core\Database;

class App
{
    public $title = "Retroachievements";
    private $db_instance;
    private static $_instance;
    
    public static function getInstance()
    {
        if(is_null(self::$_instance)) {
            self::$_instance = new App();
        }
        return self::$_instance;
    }

    public static function load()
    {
        session_start();
    }

    public function getDB()
    {
        $config = Config::getInstance(ROOT . '/config/config.php');
        if(is_null($this->db_instance)){
            $this->db_instance = new Database($config->get('db_name'), $config->get('db_host'), $config->get('db_charset'), $config->get('db_user'), $config->get('db_pass'));
        }
        return $this->db_instance;
    }

    public function getTable($name)
    {
        $class_name = '\\App\\Table\\' . ucfirst($name) . 'Table';
        return new $class_name($this->getDB());
    }
}