<?php 
//  if (!isset($_SESSION['logged_in'])){
//      header('location: ../index.php');
//     die();
// }

$mus_id = $_GET['id'];

include_once 'pdo-connect.php';


try {
    $stmt = $conn->prepare("DELETE FROM music WHERE mus_id = :musId;");
    $stmt->bindParam(':musId', $mus_id);

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'error occured'
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


   