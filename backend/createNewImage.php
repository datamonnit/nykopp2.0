<?php

$data = array();
if (!isset($_POST['name']) || !isset($_POST['dzi_file']) || !isset($_POST['category']) || !isset($_POST['size']) || !isset($_POST['technic']) || !isset($_POST['year'])){
    $data = array(
        'error' => 'POST_dataa ei saatavilla'
    );
    echo json_encode($data);
    die();
}

$name = $_POST['name'];
$dzi_file = $_POST['dzi_file'];
$dzi = $_POST['imgzoom'];
$category = $_POST['category'];
$categoryid = $_POST['categoryid'];
$size = $_POST['size'];
$technic = $_POST['technic'];
$year = $_POST['year'];

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("INSERT INTO images_uusi (name, dzi_file, dzi, categoryid, size, technic, year)
                            VALUES (:name, :dzi_file, :imgzoom, :category, :size, :technic, :year);");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':dzi_file', $dzi_file);
    $stmt->bindParam(':imgzoom', $dzi);
    $stmt->bindParam(':category', $category);
    // $stmt->bindParam(':categoryid', $categoryid);
    $stmt->bindParam(':size', $size);
    $stmt->bindParam(':technic', $technic);
    $stmt->bindParam(':year', $year);
    if ($stmt->execute() == false) {
        $data = array(
            'error' => 'tapahtui joku virhe tallennuksessa'
        );
    } else {
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $data = array(
            'success' => 'uusi kuva on tallennettu'
    );
        }
    } catch (PDOException $e) {
        if (strpos($e->getMessage(), '1062 Duplicate entry')){
            $data = array(
                'error' => 'kuva on jo olemassa!'
            );
        } else {
            $data = array(
                'error' => 'tuli virhe kuvan tallentamisessa'
            );
        }
    }

    
    header("Content-type: application/json;charset=utf-8");    
    echo json_encode($data);
    ?>