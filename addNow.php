<?php
    require('./config.php');
    if(isset($_POST['register'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $email = $_POST['email'];

        if(empty($username)) {
            header("Location: /add?err=username field is required");
            exit();
        }

        if(empty($password)) {
            header("Location: /add?err=password field is required");
            exit();
        }
        
        if(empty($email)) {
            header("Location: /add?err=email field is required");
            exit();
        }

        $chkMail = mysqli_query($conn, "SELECT * FROM admin WHERE email='$email'");
        if(mysqli_num_rows($chkMail) > 0){
            header('Location: /add?err=email exists');
            exit();
        }
        
        $chkUser = mysqli_query($conn, "SELECT * FROM admin WHERE username='$username'");
        if(mysqli_num_rows($chkUser) > 0){
            header('Location: /add?err=username exists');
            exit();
        }
        
        $hashedPWD = password_hash($password, PASSWORD_DEFAULT);
        
        $insert = "INSERT INTO admin(`username`, `email`, `password`) VALUES('$username', '$email', '$hashedPWD')";
        if(mysqli_query($conn, $insert)) {
            header("Location: /login?success=account created");
            exit();
        } else {
            header("Location: /add?err=account not created");
            exit();
        }
         
    }