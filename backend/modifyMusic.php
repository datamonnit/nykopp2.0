<?php
session_start();
//   if (!isset($_SESSION['logged_in'])){
//     $data = array(
//         'error' => 'you are not logged in'
//     );

  
  

$json = file_get_contents('php://input');
$pollMusic = json_decode($json);
$data = array();

include_once 'pdo-connect.php';

try {

    $stmt = $conn->prepare("UPDATE music SET mus_title = :mus_title, mus_file = :mus_file, mus_desc = :mus_desc
                            WHERE id = :id ;");
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
  
// try {

//     // Update music -table 
//         foreach ($pollMusic->music as $music) {
//         if (isset($music->id)){    
//         $stmt = $conn->prepare("UPDATE music SET mus_title = :mus_title WHERE id = :mus_id ;");
//         $stmt->bindParam(":mus_title", $music->title);
//         $stmt->bindParam(":mus_id", $music->id);
//         } else {
//         $stmt = $conn->prepare("INSERT INTO music (mus_title, mus_id) 
//                                VALUES (:mus_title, :mus_id"); 
//         $stmt->bindParam(":mus_title", $music->title);
//         $stmt->bindParam(":mus_id", $musicData->id);
//         }
//                 }

//         if ($stmt->execute() == false){
//         $data['error'] = 'error modifing music';
//         } else {
//         $data['success'] = 'option edit successful';
//         }   
// } 
// catch (PDOException $e) {
// $data['error'] = $e->getMessage();
// }





header("content-type: application/json;charset=utf-8");
echo json_encode($data);     



?>