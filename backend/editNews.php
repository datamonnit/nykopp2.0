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

$json = file_get_contents('php://input');
$newsData = json_decode($json);

$data = array();

try {
    $stmt = $conn->prepare("UPDATE news SET post_title = 'post_title', post_content = 'post_content', post_date = :post_date, expdate = :expdate
                             WHERE id = :id;");
    $stmt->bindParam(":post_title", $pollData->post_title);
    $stmt->bindParam(":post_content", $pollData->post_content);
    $stmt->bindParam(":post_date", $pollData->post_date);
    $stmt->bindParam(":expdate", $pollData->expdate);
    $stmt->bindParam(":id", $pollData->id);

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

