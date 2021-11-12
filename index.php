<?php session_start(); ?>
<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>
<?php

include_once 'pdo-connect.php';

if(!isset($_GET['post_id'])){
    header('Location : index.php');
}

$id = intval($_GET['post_id']);

?>
<body>
  

<div class="container">

<ul id="newsUl" class="list-group">
        
</ul>
    

</div>
</body>
<?php include_once 'layout/bottom.inc.php'; ?>