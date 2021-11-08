<?php session_start(); ?>
<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<?php include_once 'layout/bottom.inc.php'; ?>
 
<?php 
if (!isset($_SESSION['logged_in'])){
  header('Location: index.php');
  die();
}

?>
