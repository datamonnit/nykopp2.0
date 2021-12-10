<?php
// getMusic.php returns all the music files to json
session_start();

include_once 'pdo-connect.php';


  
try {
    $stmt = $conn->prepare("SELECT mus_id, mus_title, mus_file, mus_desc FROM music");
    
  if ($stmt->execute() == false) {
    $data = array(
        'error' => 'Error occured'
    );
  } else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $data = $result;
  }
} catch (PDOException $e) {
  $data = array(
    'error' => 'tapahtui virhe tallennuksessa'
  );
}

header("Content-Type: application/json;charset=utf-8");
echo json_encode($data);
?>