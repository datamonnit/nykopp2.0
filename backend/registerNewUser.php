<?php 

if (!isset($_POST['username']) || !isset($_POST['password'])){
  $data = array(
    'error' => 'POST-data ei saatavilla!'
  );
  die();
}
$username = $_POST['username'];
$email = $_POST['emailUsers'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);



include_once 'pdo-connect.php';
 
try {
    $stmt = $conn->prepare("INSERT INTO user (username, email, pwd) VALUES (:username, :pwd);");
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':pwd', $password);
    if($stmt->execute() == false){
        $data = array(
            'error' => 'tapahtui joku virhe tallennuksessa!'
        );
 }  else {
    $data = array(
    'success' => 'uusi käyttäjä on tallennettu!'
    );
}
    }
catch (PDOException $e) {
if (strpos($e->getMessage(), ' 1062 Duplicate entry')){
    $data = array(
       'error' => 'käyttäjä on jo olemassa!'
    );
} 
    $data = array(
        'error' => 'tuli virhe käyttäjän tallentamisessa!'
    );  

} 
    

header("Content-type: application/json;charset=utf-8");    
echo json_encode($data);
?>