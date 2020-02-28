<?php
namespace App\Table;
use Core\Table;

class GamesTable extends Table
{
    public function get_game_list($console)
    {
        return $this->db->prepare('SELECT * FROM games WHERE console = ?', [$console]);
    }
}