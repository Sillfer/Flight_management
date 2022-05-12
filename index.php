<?php
require_once './autoload.php';
require_once './views/includes/header.php';

$homeuser = new HomeController();

$pages = ['homeadmin', 'homeuser', 'add', 'update', 'delete', 'login', 'register', 'logout', 'showvols', 'deleterev', 'allres','viewpassanger', 'addpassenger', 'landpage', 'staticflight'];

if (isset($_SESSION['login']) && $_SESSION['login'] === true) { // Check if equal
    if (isset($_GET['page'])) {     // Checks if variabla is  declared and is different than null
        if (in_array($_GET['page'], $pages)) {  
            $page = $_GET['page'];
            $homeuser->index($page);
        } else {
            include('views/includes/404.php');
        }
    } else if ($_SESSION['role'] == 0) {
        $homeuser->index('homeuser');
    } else if ($_SESSION['role'] == 1) {
        $homeuser->index('homeadmin');
    } else {
        $homeuser->index('landpage');
    }
    require_once './views/includes/footer.php';
} else if (isset($_GET['page']) && $_GET['page'] === 'register') {
    $homeuser->index('register');
} else if (isset($_GET['page']) && $_GET['page'] === 'login') {
    $homeuser->index('login');
} else if(isset($_GET['page']) && $_GET['page'] === 'staticflight'){
    $homeuser->index('staticflight');
}else{
    $homeuser->index('landpage');
}