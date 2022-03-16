<?

include_once 'pdo-connect.php';

try {
    $stmt = $conn->("INSERT INTO images_uusi (name, dzi_file, category, size, technic, year) VALUES (:name, :dzi_file, :category, :size, :technic, :year);");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':dzi_file', $dzi_file);
    $stmt->bindParam(':category', $category);
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