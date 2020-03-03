<?php
namespace App\Table;

class GamesTable extends \Core\Table
{
    public function get_game_list($console)
    {
        return $this->db->prepare('SELECT * FROM games WHERE console = ?', [$console]);
    }
}