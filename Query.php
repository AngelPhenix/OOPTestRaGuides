<?php

class Query
{
    public static function __callStatic($method, $args)
    {
        $query = new \Core\QueryBuilder();
        return call_user_func_array([$query, $method], $args);
    }
}