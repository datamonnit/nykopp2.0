<?php 
include_once '../layout/top.inc.php';

if (!isset($_SESSION['logged_in'])) {
    header('Location: ../index.php');
}

include_once '../layout/nav.inc.php';
include_once '../layout/bottom.inc.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="form-group">
<form name="manageAdmins">    
    <fieldset>
    <label for="id" name="id" class="form-label mt-4">käyttäjäid</label>
    
    
    <label for="username" name="username" class="form-label mt-4">käyttäjänimi</label>

    
    <label for="email" name="email" class="form-label mt-4">sähköposti</label>
   

    </fieldset>
    <li class="nav-item">
        <a class="nav-link" href="adminRegister.php">create new admin</a>
    </li>
    <button id="deleteLastAdmin" class="btn btn-danger">delete admin</button>
    </form>
</div> 
<script src="../js/admin.js"></script>
<script src="../js/common.js"></script>
</body>
</html>