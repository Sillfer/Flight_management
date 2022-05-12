<?php
//Contains control logic receiving update from view and notifying the 
//model 
class HomeController{
    public function index($page){
        include('views/'.$page.'.php');
    }
}
?>