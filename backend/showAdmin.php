<?php 
session_start();
if (!isset($_GET['id'])){
header('Location: ../index.php');
}

include_once 'pdo-connect.php';

  $id = $_GET['id'];
  $username = $_GET['username'];
  $email = $_GET['email'];

try {
 $stmt = $conn->prepare("SELECT id, username, email FROM users WHERE username = :username");
 $stmt->bindParam(':id', $id);
 $stmt->bindParam(':username', $username);
 $stmt->bindParam(':email', $email);

if($stmt->execute() == false) {
    $data = array(
        'error' => 'Error'
    );
} else {
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $users = $result;
  $data['users'] = $users;
} 
} catch (PDOException $e) {
$data = array(
    'error' => 'tapahtui virhe tallennuksessa'
);
}
header("Content-Type: application/json;charset=utf-8");
echo json_encode($data);
?>


