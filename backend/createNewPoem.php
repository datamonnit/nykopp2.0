<?php 
session_start();

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


    function uploadImage($array_name, $imageName, $path)
        {
        if (move_uploaded_file($_FILES[$array_name]['tmp_name'], $path . $imageName))
        {
            return true;
        }
        else
        {
            return false;
        }
        }

        if ($_FILES['image']['name'] != '')
        {
            $image = $_FILES['image']['name'];
        if (uploadImage('image', $image, '../upload/poems/') == FALSE){
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
            die(); // Jos upload ei onnistu, palautetaan error json-muodossa
        }

                    // 2. Jos tiedoston upload onnistuu
                    //    niin listään runo tietokantaan

                    // Tarkastetaan ensin onko post dataa
        if (!isset($_POST['topic']) || !isset($_POST['option1'])){
            $data = array(
                'error' => 'POST_dataa ei saatavilla'
            );
            die();
        }

                        // Valmistellaan muuttujat
            $poem_title = $_POST['poem_title'];
            $poem_file = $_POST['poem_file'];

            include_once 'pdo-connect.php';
                        // Lisätään äänestys kantaan
            try{
                        // Luodaan pdo-statement
                $stmt = $conn->prepare("INSERT INTO poem (poem_title, poem_file) 
                                        VALUES (:poem_title, :poem_file);");
                $stmt->bindParam(':poem_title', $poem_title);
                $stmt->bindParam(':poem_file', $poem_file);

                if($stmt->execute() == false){
                    $data = array(
                        'error' => 'Error'
                    );
                } else {
                    $data = array(
                        'success' => 'New vote inserted'
                    );
                }
            } catch (PDOException $e) {
                $data = array(
                    'error' => $e->getMessage()
                );
            }

                    // jos äänestyksen lisääminen onnistui, niin lisätään myös vaihtoehdot

                    // Valmistellaan vaihtoehdot array-rakenteeseen
                    /*$options = array();

                    foreach ($_POST as $key => $value) {
                        if (substr($key, 0, 6) == 'option') {
                            $options[] = $value;
                        }
                    } */
                    // Haetaan edellisen insertin id
            $poem_id = $conn->lastInsertId();

            try{
                    // Tallenetaan kaikki vaihtoehdot
                    
            foreach($options as $option){
                    // Luodaan pdo statement

                $stmt = $conn->prepare("INSERT INTO option (name, poem_id) VALUES (:option, :poem_id)");
                $stmt->bindParam(':option', $option);
                $stmt->bindParam(':poem_id', $poem_id);
            
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
            } 
            catch (PDOException $e) {
                $data = array(
                    'error' => $e->getMessage()
                );
            }

header("Content-type: application/json;charset=utf-8");
echo json_encode($data);