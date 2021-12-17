<?php include_once '../layout/top.inc.php'; ?>

<?php 
if (!isset($_SESSION['logged_in'])) {
    header('Location: ../adminLogin.php');
}

?>


<?php include_once '../layout/admin-nav.inc.php'; ?>

<div class="container">

    <!-- <ul id="newsUl" class="list-group">
        <li class="list-group-item" data-voteid="2">
            <h2>News topic</h2>
            <p>News-content ....</p>     
        </li>
    </ul>
</div> -->
<!-- <script src="../js/adminIndex.js"></script> -->
<?php include_once '../layout/bottom.inc.php'; ?>