<?php session_start(); ?>
<?php 
// if (!isset($_SESSION['logged_in'])){
//   header('Location: index.php');
//   die();
// }
?>

<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<div class="container">

  <div>
    <h1>Uusi uutinen</h1>
  </div>
  <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Otsikko</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Otsikko">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Uutinen</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
<div class="mb-3">
  <button class="form-control" type="submit">Julkaise</button>
</div>

  <script src="js/createnews.js"></script>

<?php include_once 'layout/bottom.inc.php'; ?>