<?php
namespace App\Controller;
use Core\QueryBuilder;

class DemoController extends AppController
{   
    public function index()
    {
        require ROOT . '/Query.php';
        $query = new QueryBuilder();
        echo $query
            ->select('id', 'title', 'console')
            ->from('consoles')
            ->where('id = 1')
            ->where('title = "Megadrive"');
    }
}