<?php
// Get all poems from database

// if (!isset($_GET['id'])){
//     header('Location: ../index.php');
// }

$newsid = $_GET['id'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT id, post_topic, post_content, post_date, expdate FROM news WHERE id = :post_id");

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
