<?php
session_start();
  if (!isset($_SESSION['logged_in'])){
    $data = array(
        'error' => 'you are not logged in'
    );

  
  }

$json = file_get_contents('php://input');
$pollMusic = json_decode($json);

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("UPDATE music SET mus_title = (:mus_id, :mus_title, :mus_file, :mus_desc)
                            WHERE id = :mus_id;");
    $stmt->bindParam(':mus_id', $pollMusic->id);
    $stmt->bindParam(':mus_title', $pollMusic->title);
    $stmt->bindParam(':mus_file', $pollMusic->file);
    $stmt->bindParam(':mus_desc', $pollMusic->desc);

    if ($stmt->execute() == false){
    $data['error'] = 'error modifing music';
    } else {
    $data['success'] = 'poll edit successful';

        }

    } catch (PDOException $e) {
        $data['error'] = $e->getMessage();
    }
  
try {

    // Update options -table 
        foreach ($pollMusic->options as $option) {
        $stmt = $conn->prepare("UPDATE music SET mus_title = :mus_title WHERE id = :mus_id ;");
        $stmt->bindParam(":mus_title", $option->name);
        $stmt->bindParam("id", $option->id);

        if ($stmt->execute() == false){
        $data['error'] = 'error modifing music';
        } else {
        $data['success'] = 'option edit successful';

        }
    }
}





header("content-type: application/json;charset=utf-8");
echo json_encode($data);     
die();