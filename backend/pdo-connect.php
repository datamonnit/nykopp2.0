<?php
// Development
$servername = "localhost";
$dbname = "nykopp2";
$db_username = "root";
$db_password = "";  

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $db_username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Error:" . $e->getMessage();
}   