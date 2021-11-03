<?php 
session_start();
if (!isset($_SESSION['user_id'])){
    $data = array(
        'error' => 'You are not allowed here'
    );
    die();
}

// Valmistllaan muuttujat
$post_id = $_POST['post_id'];
$post_title = $_POST['title'];
$post_date = $_POST['post_date'];
$post_content = $_SESSION['post_content'];
$expdate = $_SESSION['expdate'];

include_once 'pdo-connect.php';
// Lisätään äänestys kantaan
try{
    // Luodaan pdo-statement
    $stmt = $conn->prepare("INSERT INTO news (post_id, start, end, user_id) 
                            VALUES (:post_id, :start, :end, :user_id);");
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
            'success' => 'Posted'
        );
    }
} catch (PDOException $e) {
    $data = array(
        'error' => $e->getMessage()
    );
}

// jos äänestyksen lisääminen onnistui, niin lisätään myös vaihtoehdot

// Valmistellaan vaihtoehdot array-rakenteeseen

// Haetaan edellisen insertin id
$poll_id = $conn->lastInsertId();

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);