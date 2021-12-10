<?php
// Get all poems from database

// if (!isset($_GET['id'])){
//     header('Location: ../index.php');
// }

$post_id = $_GET['id'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT post_id, post_title, post_content, post_date, expdate FROM news WHERE post_id = :post_id");

    $stmt->bindParam(':post_id', $post_id);

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'Error occured!'
        );
    } else {
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $data = $result;
    }
} catch (PDOException $e) {

    $data = array(
        'error' => 'tapahtui virhe tallennuksessa!!'
    );
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);
?>
