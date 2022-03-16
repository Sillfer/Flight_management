<?php

class User{
    
    static public function login($data){
        $username = $data['username'];
        try{
            $query = 'SELECT * FROM users WHERE username=:username';
            $stmt = DB::connect()->prepare($query);           // $stmt gains access to the method connect in the DB class
            $stmt->execute(array(":username" => $username));          //'username' will have corresponding value of $username
            $user = $stmt->fetch(PDO::FETCH_OBJ);
            return $user;
            if($stmt->execute()){
                return 'ok';
            }
        }catch(PDOException $ex){   //  If error raised by PDO
            echo 'error'.$ex->getMessage();  // Get exeption message
        }
    }
    static public function createUser($data){
        try{
        $stmt = DB::connect()->prepare('INSERT INTO users (fullname,username,password) VALUES (:fullname,:username,:password)');
        $stmt->bindParam(':fullname',$data['fullname']);    // Bind :fullname to variable $data['fullname']
        $stmt->bindParam(':username',$data['username']);    // Bind :username to variable $data['username']
        $stmt->bindParam(':password',$data['password']);    // Bind :password to variable $data['password']
        if($stmt->execute()){
            return 'ok';
        }
        }catch(PDOException $ex){
            return '<div style="background-color : #ff3851;"><h4 style="color:red;">Username Already Exist Choose an other One </h4></div>';
        }

        $stmt = null;
    }
}

?>