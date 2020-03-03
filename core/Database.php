<?php
namespace Core;

class Database 
{
    private $db_name;
    private $db_host;
    private $db_charset;
    private $db_user;
    private $db_pass;
    private $pdo;

    public function __construct($db_name, $db_host = 'localhost', $db_charset = 'utf8', $db_user = 'root', $db_pass = '')
    {
        $this->db_name = $db_name;
        $this->db_host = $db_host;
        $this->db_charset = $db_charset;
        $this->db_user = $db_user;
        $this->db_pass = $db_pass;
    }

    public function query($query, $class_name = null)
    {
        $req = $this->getPDO()->query($query);
        if(is_null($class_name)){
            $req->setFetchMode(\PDO::FETCH_OBJ);
        } else {
            $req->setFetchMode(\PDO::FETCH_CLASS, $class_name);
        }
        $data = $req->fetchAll();
        return $data;
    }

    public function prepare($query, $attributes, $class_name = null, $one = false)
    {
        $req = $this->getPDO()->prepare($query);
        $result = $req->execute($attributes);
        if(strpos($query, 'UPDATE') === 0 || strpos($query, 'INSERT') === 0 || strpos($query, 'DELETE') === 0){
            return $result;
        }
        if(is_null($class_name)){
            $req->setFetchMode(\PDO::FETCH_OBJ);
        } else {
            $req->setFetchMode(\PDO::FETCH_CLASS, $class_name);
        }
        if($one){
            $data = $req->fetch();
        }else{
            $data = $req->fetchAll();
        }
        return $data;
    }

    private function getPDO()
    {
        if (null === $this->pdo) {
            $pdo = new \PDO('mysql:dbname=retroachievements;host=localhost', 'root', '');
            $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            $this->pdo = $pdo;
        }
        return $this->pdo;
    }
}