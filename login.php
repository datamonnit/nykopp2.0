<?php include_once 'layout/top.inc.php';  ?>
<?php include_once 'layout/nav.inc.php';  ?>

<div id="msg" class="alert alert-dismissible alert-warning d-none">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <h4 class="alert-heading">Warning!</h4>
    <p class="mb-0"></a>.</p>
  </div>

<form name="login">
  <fieldset>
      <legend>login</legend>
  <div class="form-group">
    <label for="username" class="form-label mt-4">käyttäjänimi</label>
    <input name="username" type="username" class="form-control" id="username" placeholder="Enter username"> 
</div>
<div class="form-group">
    <label for="password" class="form-label mt-4">salasana</label>
    <input name="pwd" type="password" class="form-control" id="pwd" placeholder="password"> 
</div>
<br>
<button type="submit" name="submit" value="log in" class="btn btn-primary">submit</button>
</form>
  </fieldset>  
<script src="js/common.js"></script> 
<script src="js/login.js"></script>

<?php include_once 'layout/bottom.inc.php'; ?>
