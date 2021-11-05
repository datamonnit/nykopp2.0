<?php 
session_start();


$data = array();


if (!isset($_POST['username']) || !isset($_POST('password'))){
    $data = array(
        'error' => 'post_dataa ei saatavilla!'
    );
    die();
}
$username = $_POST['username'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);



include_once 'pdo-connect.php';
 
try{
    $stmt = $conn->prepare("INSERT INTO username, (username, password) VALUES  (:username, :username);");
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':password', $password);
    if($stmt->execute() == false){
    echo 'tallennus epäonnistui';
    } else {
    echo 'tallennettu';
}

catch (PDOException $e) {
if (strpos($e->getMessage(), ' 1062 Duplicate entry')){
    echo 'käyttäjä on jo olemassa';
    } 
    $data = array(
        'error' => 'käyttäjä on jo olemassa!';
    );  

} 
    


header("Content-type: application/json;charset=utf-8");    
echo json_encode($data);
?>