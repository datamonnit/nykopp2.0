<?php
// Haetaan uutiset palvelimelta Mysql-kannasta taulusta news
// Uutiset palautetaan JSON-muodossa

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT post_id, post_title, post_date, post_content, expdate 
        FROM news
        WHERE expdate > CURDATE() OR expdate = 0;");

    if ($stmt->execute() == false) {
        $data = array (
            'error' => 'Error occured!'
        );
    } else {
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $data = $result;
    }
} catch (PDOException $e) {
    $data = array('error' => 'tapahtui virhe tallnuksessa!');
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);