<?php
include_once '../config.env.php';

$name = $_POST['name'];
$email = $_POST['email'];
$number = $_POST['number'];

$to = $spost;
$subject = 'feedback';
$message = $_POST['feedback'];
$message = wordwrap($message,70) . "\r\n";
$headers = "From: $email" . "\r\n" .
"puh: $number" . "\r\n" . 
"T: $name";
$message = "$message"  .  "$headers" . "\r\n";


mail($to,$subject,$message,$headers);
