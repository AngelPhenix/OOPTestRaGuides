<?php
namespace App\Controller;

class DemoController extends AppController
{   
    public function index()
    {
        require ROOT . '/Query.php';
        $query = new \Core\QueryBuilder();
        echo $query
            ->select('id', 'title', 'console')
            ->from('consoles')
            ->where('id = 1')
            ->where('title = "Megadrive"');
    }
}