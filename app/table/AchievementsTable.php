<?php
namespace App\Table;

class AchievementsTable extends \Core\Table
{
    public function get_cheevo_list($game_id)
    {
        return $this->db->prepare('SELECT * FROM achievements WHERE game_id = ?', [$game_id]);
    }
}