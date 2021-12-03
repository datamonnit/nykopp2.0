<?php

include_once '../layout/top.inc.php';
include_once '../layout/nav.inc.php';


include_once 'pdo-connect.php'; 




try {
    $stmt = $conn->prepare("UPDATE music (mus_id, mus_title, mus_file, mus_desc) VALUES (:mus_id, :mus_title, :mus_file, :mus_desc);");
    $stmt->bindParam(':mus_id', $mus_id);
    $stmt->bindParam(':mus_title', $mus_title);
    $stmt->bindParam(':mus_file', $mus_file);
    $stmt->bindParam(':mus_desc', $mus_desc);
if ($stmt->execute() == false){
    $data = array(
    'error' => 'tapahtui joku virhe tallennuksessa'
    ); 
} else {
    $data =  array(
    'success' => 'onnistui'
 );
    }

} catch (PDOException $e) {
    $data = array(
      'error' => 'tapahtui virhe tallennuksessa'
    );
  }
  

include_once '../layout/bottom.inc.php';

header("Content-Type: application/json;charset=utf-8");
echo json_encode($data);
?>