<?php
include_once '../config.env.php';

$name = $_POST['nimi'];
$email = $_POST['sposti'];
$puhn = $_POST['puh'];

$to = $spost;
$subject = 'feedback';
$message = $_POST['palaute'];
$message = wordwrap($message,70) . "\r\n";
$headers = "From: $email" . "\r\n" .
"puh: $puhn" . "\r\n" . 
"T: $name";
$message = "$message"  .  "$headers" . "\r\n";


mail($to,$subject,$message,$headers);
