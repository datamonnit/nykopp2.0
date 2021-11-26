<?php 

 if (!isset($_GET['id'])){
     header('location: ../index.php');
 }

$userId = $_GET['id'];

include_once 'pdo-connect.php';


try {
    $stmt = $conn->prepare("DELETE FROM users WHERE id = :userId;");
    $stmt->bindParam(':userId', $userId);

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'error occured'
        );
    } else {
        $data = array(
            'success' => 'delete successful'
        );
    }
    $stmt = $conn->prepare("DELETE FROM users WHERE id = :userId;");
    $stmt->bindParam(':userId', $userId);

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'delete failed'
        );
    } else {
        $data = array(
            'success' => 'delete successful'
        );
    } 

} catch (PDOException $e) {
    $data = array(
        'error' => 'error tapahtui tallennuksessa'
    );
}

header('Content-Type: application/json;charset=utf-8');
echo json_encode($data);


?> 