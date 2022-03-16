<?php

class Redirect{
    static public function to($page){  // $page in HomeController
        header('location:'.$page);
    }
}

?>