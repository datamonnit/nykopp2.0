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


$result = mail($to,$subject,$message,$headers);

if (!$result){
    $data = array(
        'error' => 'Error!'
    );
} else {
    $data = array(
        'success' => 'Email sent!'
    );
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);