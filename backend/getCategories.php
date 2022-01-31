<?php

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT id, name, sort FROM category");

    if ( $stmt->execute() == false){
        $data = array(
            'error' => 'Error occurred!'
        );
    } else {
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $data =  $result;
    }
} catch (PDOException $e) {
    $data = array(
        'error' => 'Tapahtui joku virhe!!'
    );
}

header("Content-type: application/json;charset=utf-8");
    echo json_encode($data);