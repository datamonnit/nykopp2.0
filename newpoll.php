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


  <form name="newPoll">
      <fieldset>
        <legend>Kirjoita uusi runo</legend>
        <div class="form-group">
          <label for="otsikko" class="form-label mt-4"></label>
          <input name="otsikko" type="username" class="form-control" placeholder="otsikko">
        </div>
        
        <div class="form-group">
          <label for="runo" class="form-label mt-4"></label>
          <input name="runo" type="username" class="form-control" placeholder="runo">
        </div>

        <h4></h4>
      </fieldset>
      <button type="submit" class="btn btn-primary">Lisää Runo</button>
    </form>

</div>

  <script src="js/newPoll.js"></script>
  <script src="js/common.js"></script>

        <?php include_once 'layout/bottom.inc.php'; ?>