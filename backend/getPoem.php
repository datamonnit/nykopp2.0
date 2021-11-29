<?php
// Get all poems from database

if (!isset($_GET['id'])){
    header('Location: ../index.php');
}

$poemid = $_GET['id'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT id, topic, start, end, user_id FROM poem WHERE id = :poemid");

    $stmt->bindParam(':poemid', $poemid);

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

// Get options from database
try {
    $stmt = $conn->prepare("SELECT id, name, votes FROM option WHERE poem_id = :poemid");
    $stmt->bindParam(':poemid', $poemid);

    if ($stmt->execute() == false){
        $data = array(
            'error' => 'Error occured!'
        );
    } else {
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $options = $result;
        $data['options'] = $options;
    }
} catch (PDOException $e) {

    $data = array(
        'error' => 'tapahtui virhe tallennuksessa!!'
    );
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);
?>