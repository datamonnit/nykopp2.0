<?php

$newsid = $_GET['post_id'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT post_id, post_title, post_date, post_content, expdate FROM news WHERE id = :post_id");

    $stmt->bindParam(':post_id', $post_id);

    if ($stmt->execute() == false) {
        $data = array (
            'error' => 'Error occured!'
        );
    } else {
        $result = $stmt->fetch(PDO::FETC_ASSOC);
        $data = $result;
    }
} catch (PDOException $e) {
    $data = array(
        'error' => 'tapahtui virhe tallnuksessa!'
    );
}

echo json_encode($data);