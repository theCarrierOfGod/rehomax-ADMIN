<?php
require('./config.php');
session_start();

if(isset($_GET['tid']) && isset($_GET['approve'])) {
    $tid = $_GET['tid'];
    mysqli_query($conn, "UPDATE withdrawal SET status='approved' WHERE transaction_id='$tid'");
    header('Location: /withdraws.php');
    exit();
}

if(isset($_GET['tid']) && isset($_GET['decline'])) {
    $tid = $_GET['tid'];
    $old = $_GET['old'];
    $username = $_GET['username'];
    $amount = $_GET['amount'];
    
    mysqli_query($conn, "UPDATE withdrawal SET status='declined' WHERE transaction_id='$tid'");
    
    $new = $old + $amount;
    mysqli_query($conn, "UPDATE customers SET balance='$new' WHERE username='$username'");
    header('Location: /withdraws.php');
    exit();
}