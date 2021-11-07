<?php

if (!isset($_POST['topic']) || !isset($_POST['option1'])){
    $data = array(
        'error' => 'POST_dataa ei saatavilla'
    );
    die();
}

$post_id = $_POST['post_id'];
$post_title = $_POST['post_title'];
$post_date = $_POST['post_date'];
$post_content = $_POST['post_content'];
$expdate = $_POST['expdate'];

// include_once 'pdo-connect.php';

try{

    $stmt = $conn->prepare("INSERT INTO news (post_id, post_title, post_date, post_content, expdate)
                            VALUES (:post_id, :post_title, :post_date, :post_content, :expdate);");
    $stmt->bindParam(':post_id', $post_id);
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

        );
    }

    } 
    catch (PDOException $e) {
        $data = array(
            'error' => $e->getMessage()
        );
    }
/*
    try{

        $stmt = $conn->prepare("INSERT INTO posts (post_title, post_id) VALUES (:post_content, :post_id)");
        $stmt->bindParam(':post_content', $post_content);
        $stmt->bindParam(':post_id', $post_id);

        if($stmt->execute() == false){
            $data = array(
                'error' => 'Error'
            );
        } else {
            $data = array(
                'success' => 'New vote inserted'
            );
        }
        }
        catch (PDOException $e) {
        $data = array(
            'error' => $e->getMessage()
        );
    }
    */

?>
