<?php

include_once '../layout/top.inc.php';
include_once '../layout/nav.inc.php';
include_once 'pdo-connect.php'; 


try {
    $stmt = $conn->prepare("UPDATE poem (poem_id, poem_title, poem_file) VALUES (:poem_id, :poem_title, :poem_file);");
    $stmt->bindParam(':poem_id', $poem_id);
    $stmt->bindParam(':poem_title', $poem_title);
    $stmt->bindParam(':poem_file', $poem_file);
if ($stmt->execute() == false){
    $data = array(
    'error' => 'tapahtui virhe tallennuksessa'
    ); 
} else {
    $data =  array(
    'success' => 'onnistui!'
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