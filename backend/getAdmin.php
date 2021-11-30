<?php 

if (!isset($_GET['id'])){
    header('Location:  ../index.php');
}



$userid = $_GET['id'];

include_once 'pdo-connect.php';

try{
    $stmt = $conn->prepare("SELECT id, username, pwd , email, user_id FROM users WHERE user_id = :userid");
}
