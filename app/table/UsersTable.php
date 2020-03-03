<?php
namespace App\Table;

class UsersTable extends \Core\Table
{
    public function get_by_id($user_id)
    {
        return $this->db->prepare('SELECT * FROM users WHERE id = ?', [$user_id], null, true);
    }
}