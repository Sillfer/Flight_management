<?php

session_start();

require_once './bootstrap.php';

spl_autoload_register('autoload');  //Register 'autoload' function as autoload implementation 

function autoload($class_name){
    $array_paths = array(
        'database/',
        'app/classes/',
        'models/',
        'controllers/',
        'views/'
    );

    $parts = explode('\\',$class_name);  //Explode the string into an array  of substrings, using a specified separator
    $name = array_pop($parts); // array_pop() - returns and removes the last value of the array

    foreach($array_paths as $path){
        $file = sprintf($path.'%s.php',$name);
        if(is_file($file)){
            include_once $file;
        }
    }
}