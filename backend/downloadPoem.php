<?php

include_once 'pdo-connect.php';

try {
    $stmt = $conn->prepare("SELECT * FROM `nykopp2.0`.poems WHERE poem_id = ?");

  if ($stmt->execute(array($_GET['id'])) == false) {
    $data = array(
        'error' => 'Error occured'
    );
  } else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $data = $result;
  }
} catch (PDOException $e) {
  $data = array(
    'error' => 'tapahtui virhe tallennuksessa'
  );
}

$url = "../upload/poems/" . $data[0]["poem_file"];

// Add header to load pdf file
header('Content-type: application/pdf');
header('Content-Disposition: inline; filename="' . $data[0]["poem_file"] . '"');
header('Content-Transfer-Encoding: binary');
header('Accept-Ranges: bytes');
@readfile($url);
?>