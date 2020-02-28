<?php
namespace App\Controller;
use Core\Controller;

class PostController extends AppController
{
    public function __construct()
    {
        parent::__construct();
        $this->load_model('consoles');     // $this->consoles          Table with all consoles
        $this->load_model('games');        // $this->games             Table with all games defined by console_name selected
        $this->load_model('achievements'); // $this->achievements      Table with all achievements define by game_id selected
    }

    public function consoles()
    {
        $consoles = $this->consoles->exists();
        if(!$consoles){
            $this->not_found();
        }
        $this->render('console', compact('consoles'));
    }

    public function games()
    {
        $games = $this->games->get_game_list($_GET['console']);
        if(!$games){
            $this->not_found();
        }
        $this->render('game', compact('games'));
    }

    public function achievements()
    {
        $achievements = $this->achievements->get_cheevo_list($_GET['game_id']);
        if(!$achievements){
            $this->not_found();
        }
        $this->render('achievement', compact('achievements'));
    }
}