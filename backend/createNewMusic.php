<?php 
 
$data = array();
//tarkistuksia ensin
// if (!isset($_POST['username']) || !isset($_POST['password'])){
// $data = array(
// 'error' => 'POST-dataa ei saatavilla!'
//     ); 
// die();



  $mus_id = $_POST['id'];
  $mus_title = $_POST['mus_title'];
  $mus_file = $_POST['mus_file'];
  $mus_desc = $_POST['mus_desc'];

  include_once 'pdo-connect.php';

  try {
      $stmt = $conn->prepare("INSERT INTO music (mus_id, mus_title, mus_file, mus_desc) VALUES (:mus_id, :mus_title, :mus_file, :mus_desc);");
      $stmt->bindParam(':mus_id', $mus_id);
      $stmt->bindParam(':mus_title', $mus_title);
      $stmt->bindParam(':mus_file', $mus_file);
      $stmt->bindParam(':mus_desc', $mus_desc);
      if ($stmt->execute() == false){
        $data = array(
        'error' => 'tapahtui joku virhe tallennuksessa'
      );
} else {
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $data = array(
    'success' => 'uusi käyttäjä on tallennettu'
    );
}
    } catch (PDOException $e) {
    if (strpos($e->getMessage(), '1062 Duplicate entry')){
    $data = array(
    'error' => 'käyttäjä on jo olemassa!'
    );
    } else {
        $data = array(
        'error' => 'tuli virhe käyttäjän tallentamisessa!'
        );  
            } 
    }   
  header("Content-type: application/json;charset=utf-8");    
  echo json_encode($data);
  ?>
  