<?php 



if (!isset($_POST['username']) || !isset($_POST['password']) || !isset($_POST['email'])) {
$data = array(
  'error' => 'POST_dataa ei saatavilla'
      );
      die();
}

  $selector = bin2hex(random_bytes(8));
  $token = random_bytes(32);

  $url = "nykopp2/password/forgotPassword.php/reset-password.php?selector=" . $selector . "&validator=" . bin2hex($token) . 

  $expires = date("U") + 1800;

  $pwdReset = $_POST['pwdReset'];
  $pwdResetEmail = $_POST['pwdResetEmail'];
  $pwdResetToken = $_POST['pwdResetToken'];
  $pwdResetExpires = $_POST['pwdResetExpires'];

  include_once 'pdo-connect.php';

try {
  $stmt = $conn->prepare("INSERT INTO pwdReset (pwdResetEmail, pwdResetSelector, pwdResetToken, pwdResetExpires) VALUES 
  (:pwdResetEmail, :pwdResetSelector, :pwdResetToken, :pwdResetExpires);");
  $stmt->bindParam(':pwdReset', $pwdReset);
  $stmt->bindParam(':pwdResetEmail', $pwdResetEmail);
  $stmt->bindParam(':pwdResetToken', $pwdResetToken);
  $stmt->bindParam(':pwdResetExpires', $pwdResetExpires);

  if ($stmt->execute() == false){
    $data = array(
      'error' => 'tapahtui joku virhe tallennuksessa'
    );
      }
      else {
      $data = array(
      'success' => 'uusi käyttäjä on tallennettu'
      );
        }
      }  catch (PDOException $e) {
      if (strpos($e->getMessage(), ' 1062 Duplicate entry')){
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





//(!isset($_POST["reset-request-submit"])







?>


