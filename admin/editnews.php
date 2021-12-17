<?php
// if (!isset($_SESSION['logged_in'])){
//     header('Location: index.php');
//     die();
//   }
?>

<?php include_once '../layout/top.inc.php'; ?>
<?php include_once '../layout/nav.inc.php'; ?>

<div class="container">

<form name="editNews">
<fieldset>
    <legend>Muokkaa uutista</legend>

    <div class="form-group">

    <input name="id" type="hidden" class="form-control" placeholder="id">

    <div class="mb-3">
    <input name="topic" type="text" class="form-control" placeholder="topic">
    </div>

    <div class="mb-3">
    <textarea name="content" type="text" class="form-control" placeholder="content" rows="10"></textarea>
    </div>

    <div class="mb-3">
    <input name="date" type="datetime-local" class="form-control">
    </div>

    <div class="mb-3">
    <input name="expdate" type="datetime-local" class="form-control">
    </div>

</fieldset>

<button type="submit" class="btn btn-primary">Tallenna</button>

</form>

</div>

</form>

<script src="../js/editNews.js"></script>

<?php include_once '../layout/bottom.inc.php'; ?>
