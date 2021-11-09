<?php session_start(); ?>
<?php 
if (!isset($_SESSION['logged_in'])){
  header('Location: index.php');
  die();
}
?>

<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<div class="container">

    <div id="msg" class="alert alert-dismissible alert-warning d-none">
      <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
      <h4 class="alert-heading">Warning!</h4>
      <p class="mb-0"></a>.</p>
    </div>

</div>

  <script src="js/poems.js"></script>
  <script src="js/common.js"></script>

        <?php include_once 'layout/bottom.inc.php'; ?>