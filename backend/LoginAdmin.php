<?php
session_start();

if (isset($_POST['username']) || isset($_POST['password'])) {
    $data = array(
        'error' => 'POST_dataa ei saatavilla'
    ); 
  die();
}

$username = $_POST['username'];
$password = $_POST['password'];

include_once 'pdo-connect.php';


try {
    $stmt = $conn->prepare("SELECT id, username, pwd FROM users WHERE username =:username");
    $stmt->bindParam(':username', $username);

    if($stmt->execute() == false) {
        $data = array(
            'error' => 'tapahtui virhe tallennuksessa'
        );
    } else {
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        if (password_verify($password, $result['pwd'])) {
            $data = array(
                'success' => true;
            );

            $_SESSION['logged_in'] = true;
            $_SESSION['user_id'] = $result['id'];
            $_SESSION['username'] = $result['username'];
        } else {
            $data = array(
                'error' => 'salasana on väärä!'
            );
        }
    }
} catch (PDOException $e) {

    $data = array(
    'error' => 'tapahtui virhe tallennuksessa'
    );
}
header("Content-Type: application/json;charset=UTF-8");
echo json_encode($data);
?>
