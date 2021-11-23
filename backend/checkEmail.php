<?php 
include_once 'changePassword.php';
include_once 'pdo-connect.php';

if (!isset($_GET['email'])) {
    header('Location: ../index.php');

$query = $pdo->prepare('SELECT email FROM users WHERE email = ?');
$query->execute([$email]);
$row = $query->rowCount();

if ($row == 1) {
    

//linkki 
   $link = 'href=""' 
}


 
?>

