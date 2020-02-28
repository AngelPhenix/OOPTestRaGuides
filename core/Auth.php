<?php
namespace Core;

class Auth 
{
    private $db;

    public function __construct(Database $db)
    {
        $this->db = $db;
    }

    public function getUserId()
    {
        if($this->logged()){
            return $_SESSION['auth'];
        }
        return false;
    }

    public function login($username, $password)
    {
        $user = $this->db->prepare('SELECT * FROM users WHERE username = ?', [$username], null, true);
        if($user){
            if(password_verify($password, $user->password)){
                $_SESSION['auth'] = $user;
                return true;
            };
        }
        return false;
    }

    public function logged()
    {
        return isset($_SESSION['auth']);
    }
}