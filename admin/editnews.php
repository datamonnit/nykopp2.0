<?php session_start(); ?>
<?php
// if (!isset($_SESSION['logged_in'])){
//     header('Location: index.php');
//     die();
//   }
?>

<?php include_once '../layout/top.inc.php'; ?>
<?php include_once '../layout/nav.inc.php'; ?>

<form name="editNews">
<fieldset>
    <legend>Muokkaa uutista</legend>

    <div class="form-group">

    <input name="topic" type="text" class="form-control" placeholder="topic">

    <input name="content" type="text" class="form-control" placeholder="content">

    <input name="date" type="datetime-local" class="form-control">

    <input name="expdate" type="datetime-local" class="form-control">

</fieldset>

<button type="submit" class="btn btn-primary">Save</button>

</form>

</div>

</form>

<script src="../js/editNews.js"></script>

<?php include_once '../layout/bottom.inc.php'; ?>
