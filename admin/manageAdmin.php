<?php 
include_once '../layout/top.inc.php';

 if (!isset($_SESSION['logged_in'])) {
    header('Location: ../index.php');
    die();
 }

include_once '../layout/nav.inc.php';
include_once '../layout/bottom.inc.php';


?>

<div class="container">
<div class="row">
    <div class="col">
        <h1>Manage admins</h1>
            <h2>Current admins</h2>
            <ul id="adminUl" class="list-group">
                
            </ul>

            <p>Olet kirjautunut käyttäjänä <?php echo $_SESSION['username']; ?></p>
            

        </div>
        
        <a href="adminRegister.php" class="btn btn-primary">Create new admin user</a>
    </div>

</div>
<script src="../js/admin.js"></script>
<script src="../js/common.js"></script>
</body>
</html>