<?php 
session_start();

// Tarkastetaan ensin onko topic annettu
if (!isset($_POST['topic'])){
    $data = array(
        'error' => 'POST_dataa ei saatavilla'
    );
    echo json_encode($data);
    die();
}

// Check if user is logged in
/* 
if (!isset($_SESSION['user_id'])){
    $data = array(
        'error' => 'You are not allowed here'
    );
    die();
}
*/

// 1. Tiedoston upload-toiminto
function uploadImage($array_name, $imageName, $path) {
    if (move_uploaded_file($_FILES[$array_name]['tmp_name'], $path . $imageName)) {
        return true;
    } else {
        return false;
    }
}

// Onko tiedostonimi erisuuri kuin tyhjä merkkijono
if ($_FILES['image']['name'] != '') {

    $image = $_FILES['image']['name'];

    // Siirretään kuva oikeaan paikkaan
    if (uploadImage('image', $image, '../upload/poems/') == FALSE) {
        $data = array(
            'error' => 'Upload was not succesfull'
        );
        echo json_encode($data);
        die(); // Jos upload ei onnistu, palautetaan error json-muodossa
    }

} else {
    $data = array(
        'error' => 'Upload was not succesfull. No image data!!!'
    );
    echo json_encode($data);
    die();  
}

// 2. Jos tiedoston upload onnistuu
// niin listään runo tietokantaan

// Valmistellaan muuttujat
$poem_title = $_POST['topic'];
$poem_file = $_FILES['image']['name'];

include_once 'pdo-connect.php';

try{
    // Luodaan pdo-statement
    $stmt = $conn->prepare("INSERT INTO poems (poem_title, poem_file) 
                            VALUES (:poem_title, :poem_file);");
    $stmt->bindParam(':poem_title', $poem_title);
    $stmt->bindParam(':poem_file', $poem_file);

    if($stmt->execute() == false){
        $data = array(
            'error' => 'Error'
        );
    } else {
        $data = array(
            'success' => 'New poem inserted'
        );
    }
} catch (PDOException $e) {
    $data = array(
        'error' => $e->getMessage()
    );
}

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);