<?php
$servername = "localhost";
$db_username = "root";
$db_password = "";
$dbname = "vanhanykopp";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=UTF8;", $db_username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Error:" . $e->getMessage();
}