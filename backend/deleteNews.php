<?php
session_start();

// if (!isset($_SESSION['user_id'])){
//     $data = array(
//         'error' => 'You are not allowed here'
//     );

//     header("Content-type: application/json;charset=utf-8");
//     echo json_encode($data);
//     die();
// }

$newsId = $_GET['id'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("DELETE FROM news WHERE post_id = :id;");
    $stmt->bindParam(":id", $newsId);

    if($stmt->execute() == false){
        $data['error'] = 'Error modifying news';
    } else {
        $data['success'] = 'News edit successful';
    } 
    }catch (PDOException $e){
        $data['error'] = $e->getMessage();
    }

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);