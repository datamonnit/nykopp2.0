<?php
session_start();
// Get all poems from database
if (isset($_SESSION['user_id'])){
    $user_id = $_SESSION['user_id'];
} else {
    $user_id = false;
}

if (isset($_GET['show_all'])){
    $show_all = true;
} else {
    $show_all = false;
}

include_once 'pdo-connect.php';

try {
    if ($show_all == true || $user_id == false){
        $stmt = $conn->prepare("SELECT poem_id, poem_title, poem_file FROM poems");
    } else {
        $stmt = $conn->prepare("SELECT poem_id, poem_title, poem_file FROM poems WHERE user_id = :userid");
        $stmt->bindparam(':userid', $user_id);
    }

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'Error occured!'
        );
    } else {
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $data = $result;
    }
} catch (PDOException $e) {

    $data = array(
        'error' => 'tapahtui virhe tallennuksessa!!'
    );
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);