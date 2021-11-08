<?php session_start(); ?>
<?php 
// if (!isset($_SESSION['logged_in'])){
//   header('Location: index.php');
//   die();
// }
?>
// title postdate content expdate
<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<div class="container" name="newNews">

  <div>
    <h1>Uusi uutinen</h1>
  </div>
  <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Otsikko</label>
  <input name="title" type="text" class="form-control" placeholder="Otsikko">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Uutinen</label>
  <textarea name="content" class="form-control" rows="200"></textarea>
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Alkamispäivä</label>
  <textarea name="start" class="form-control" rows="3"></textarea>
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Päättymispäivä</label>
  <textarea name="end" class="form-control" rows="3"></textarea>
</div>

<div class="mb-3">
  <button class="form-control" type="submit">Julkaise</button>
</div>

<script src="../js/news.js"></script>

<?php include_once 'layout/bottom.inc.php'; ?>