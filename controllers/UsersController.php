<?php

class UsersController {
    public function auth(){
        if(isset($_POST['submit'])){
            $data['username'] = $_POST['username'];
            $result = User::login($data);     // $result gains access to the method login in the User class
            // set  property username in the $result object
            if($result->username === $_POST['username'] && password_verify($_POST['password'], $result->password))  // Check if equal
            {
                $_SESSION['login'] = true;
                $_SESSION['username'] = $result->username;
                $_SESSION['role'] = $result->role;
                $_SESSION['id'] = $result->id;
                    if($result->role == 0 ){    // Compares the value of the variable to return TRUE
                        Redirect::to('homeuser');
                    }else{
                        Redirect::to('homeadmin');
                    }
                }else{
                Session::set('error','Username or Password incorrect');
                Redirect::to('login');
            }
        }
    }
    public function register(){
        if(isset($_POST['submit'])){    // Checks if variabla is  declared and is different than null
            $options = [
              'cost' => 12
            ];
            $password = password_hash($_POST['password'],PASSWORD_BCRYPT,$options);
            $data = array(
                'fullname' => $_POST['fullname'], //'fullname' will have corresponding value of $_POST['fullname']
                'username' => $_POST['username'],
                'password' => $password,
                'role' => 0
            );
            $result = User::createUser($data);   // $result gains access to the method createUser in the User class
            if($result === 'ok'){   // Check if equal
                Session::set('success','Account Created');
                Redirect::to('login');
            }else{
                echo $result;
            }
        }
    }
    static public function logout(){
        session_destroy();
    }
}