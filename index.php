<?php session_start(); ?>
<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>
<?php
if(!isset($_GET['post_id'])){
    header('Location : index.php');
}

$id = intval($_GET['post_id']);

?>
<body>
  

<div class="container">

</div>
</body>
<?php include_once 'layout/bottom.inc.php'; ?>