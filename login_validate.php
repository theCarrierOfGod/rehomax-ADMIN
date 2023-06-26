<?php
require('./config.php');
    if(isset($_POST['login'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        if(empty($username)) {
            header("Location: /login?err=username field is required");
            exit();
        }

        if(empty($password)) {
            header("Location: /login?err=password field is required");
            exit();
        }
        
        $chkUser = mysqli_query($conn, "SELECT * FROM admin WHERE username='$username'");
        if(mysqli_num_rows($chkUser) == 0){
            header('Location: /login?err=username unknown');
            exit();
        } else {
            while($row = mysqli_fetch_assoc($chkUser)) {
                $hashedPWD = $row['password'];
                if(password_verify($password, $hashedPWD)) {
                    session_start();
                    $_SESSION['login'] = $row['email'];
                    $_SESSION['user'] = $row['username'];
                    header('Location: /');
                    exit();
                } else {
                    header('Location: /login?err=incorrect password');
                    exit();
                }
            }
        }
        
    }