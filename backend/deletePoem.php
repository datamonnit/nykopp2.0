<?php 

if (isset($_GET['id'])) {
    $poemId = $_GET['id'];
} else {
    $data = array(
    'error' => 'error occured'
    );
    echo json_encode($data);
    die();
}


include_once 'pdo-connect.php';

// delete poems try catch

try {
    $stmt = $conn->prepare("DELETE FROM poems WHERE poem_id = :poem_id;");
    $stmt->bindParam(':poem_id', $poemId);

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