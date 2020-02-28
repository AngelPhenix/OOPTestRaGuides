<?php
namespace Core;

class Form {
    public $surround = 'p';
    protected $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function surround($html)
    {
        return "<{$this->surround}>{$html}</{$this->surround}>";
    }


    public function getValue($key)
    {
        if(is_object($this->data)){
            return $this->data->$key;
        }
        return isset($this->data[$key]) ? $this->data[$key] : null;
    }

    public function input($name, $label, $options = [])
    {
        $type = isset($options['type']) ? $option['type'] : 'text';
        return $this->surround("<input type=". $type ." value={$this->getValue('username')}>");
    }

    public function submit() 
    {
        return $this->surround("<input type='submit' value='Envoyer'>");
    }
}