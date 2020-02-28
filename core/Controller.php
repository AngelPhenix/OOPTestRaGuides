<?php
namespace Core;

class Controller
{
    protected $view_path;
    protected $template;

    protected function render($view, $vars = [])
    {
        ob_start();
        extract($vars);
        require($this->view_path . $view . '.php');
        $content = ob_get_clean();
        require($this->view_path . 'templates/' . $this->template . '.php');
    }

    protected function forbidden()
    {
        header('HTTP/1.0 403 Forbidden');
        die('Accès Interdit');
    }

    protected function not_found()
    {
        header('HTTP/1.0 404 NotFound');
        die('Page Introuvable');
    }
}