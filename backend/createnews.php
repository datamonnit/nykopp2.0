<?php
session_start();

// Tarkastetaan ensin onko post dataa
if (!isset($_POST['post_title']) || !isset($_POST['post_content']) || !isset($_POST['post_date']) || !isset($_POST['expdate']) ){
    $data = array(
        'error' => 'POST_dataa ei saatavilla'
    );
    echo json_encode($data);
    die();
}

$post_title = $_POST['post_title'];
$post_date = $_POST['post_date'];
$post_content = $_POST['post_content'];
$expdate = $_POST['expdate'];

include_once 'pdo-connect.php';

try{

    $stmt = $conn->prepare("INSERT INTO news (post_title, post_date, post_content, expdate)
                            VALUES (:post_title, :post_date, :post_content, :expdate);");
    $stmt->bindParam(':post_title', $post_title);
    $stmt->bindParam(':post_date', $post_date);
    $stmt->bindParam(':post_content', $post_content);
    $stmt->bindParam(':expdate', $expdate);

    if($stmt->execute() == false){
        $data = array(
            'error' => 'Error'
        );
    } else {
        $data = array(
            'success' => 'News inserted'
        );
    }

} catch (PDOException $e) {
    $data = array(
        'error' => $e->getMessage()
    );
}

echo json_encode($data);