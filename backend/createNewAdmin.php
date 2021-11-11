<?php 

$data = array();

//tarkistuksia ensin
if (!isset($_POST['username']) || !isset($_POST['password'])){
  $data = array(
    'error' => 'POST-dataa ei saatavilla!'
    
  );
  die();  
}
$username = $_POST['username'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$password2 = password_hash($_POST['confirmPassword'], PASSWORD_DEFAULT);

include_once 'pdo-connect.php';


try {
    $stmt = $conn->prepare("INSERT INTO users (username, passwd) VALUES (:username, :passwd);");
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':passwd', $password);
    $stmt->execute();
    
    echo 'tallennettu';
    
    
    
    
   //if($stmt->execute() == false){
 //     $data = array(
 //           'error' => 'tapahtui joku virhe tallennuksessa!'
 //       );
 //}  else {
  // $data = array(
    //'success' => 'uusi käyttäjä on tallennettu!'
    //);
//} 
  //    }
//catch (PDOException $e) {
//if (strpos($e->getMessage(), ' 1062 Duplicate entry')){
   // $data = array(
    //   'error' => 'käyttäjä on jo olemassa!'
    //);
//} else {
  //$data = array(
    //'error' => 'tuli virhe käyttäjän tallentamisessa!'
    //);  

//  } 
//}    
//header("Content-type: application/json;charset=utf-8");    
//echo json_encode($data);
?>