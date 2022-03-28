<?php 

include_once '../layout/top.inc.php'; 

if (!isset($_SESSION['logged_in'])){
  header('Location: ../index.php');
  die();
}

include_once '../layout/admin-nav.inc.php'; 

?>

<div class="container">
  <form name="createnews">
    <div>
      <h1>Uusi uutinen</h1>
    </div>
    <div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Otsikko</label>
    <input name="post_title" type="text" class="form-control" placeholder="Otsikko">
  </div>
  <div class="mb-3">
    <label for="exampleFormControlTextarea1" class="form-label">Uutinen</label>
    <textarea name="post_content" class="form-control" rows="10"></textarea>
  </div>
  <div class="mb-3">
    <label for="exampleFormControlTextarea1" class="form-label">Alkamispäivä</label>
    <input name="post_date" class="form-control" type="date"></input>
  </div>
  <div class="mb-3">
    <label for="exampleFormControlTextarea1" class="form-label">Päättymispäivä</label>
    <input name="expdate" class="form-control"  type="date"></input>
  </div>

  <div class="mb-3">
    <button class="form-control" type="submit">Julkaise</button>
  </div>
  </form>
</div>

<script src="../js/createNews.js"></script>

<?php include_once '../layout/bottom.inc.php'; ?>