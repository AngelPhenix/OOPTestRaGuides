<?php
namespace Core;

class Table
{
    protected $table;
    protected $db;

    public function __construct(Database $db)
    {
        $this->db = $db;
        if(is_null($this->table)){
            $parts = explode('\\', get_class($this));
            $class_name = end($parts);
            $this->table = strtolower(str_replace('Table', '', $class_name));
        }
    }

    public function extract($key, $value)
    {
        $records = $this->all();
        $return = [];
        foreach($records as $v){
            $return[$v->$key] = $v->$value;
        }
        return $return;
    }

    public function all()
    {
        return $this->db->query('SELECT * FROM ' . $this->table);
    }

    public function exists()
    {
        return $this->db->query('SELECT DISTINCT console as name FROM games');
    }

    public function update($id, $fields)
    {
        $sql_parts = [];
        $attributes = [];
        foreach($fields as $k => $v){
            $sql_parts[] = $k . '= ?';
            $attributes[] = $v;
        }
        $attributes[] = $id;
        $sql_part = implode(', ', $sql_parts);
        return $this->db->prepare('UPDATE ' . $this->table . ' SET ' . $sql_part . ' WHERE id = ?', $attributes, null, true);
    }

    public function delete($id)
    {
        return $this->db->prepare('DELETE FROM ' . $this->table . ' WHERE id = ?', [$id], null, true);
    }
}