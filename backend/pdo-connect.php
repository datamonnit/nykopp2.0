<?php
include_once '../config.env.php'

try {
    $conn = new PDO("mysql:host=$servername;dbname=$db_name;charset=utf8", $db_username, $db_password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Error:" . $e->getMessage();
}   
