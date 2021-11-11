<?php include_once 'layout/top.inc.php';?>
<?php include_once 'layout/nav.inc.php';?>


<?php session_start();?>

<div class="container">
  </div>
</div>
<div class="container">
<form name="register">
<fieldset>
    <div class="form-group">
        <label for="username" class="form-label mt-4">käyttäjänimi</label>
        <input name="username" type="username" class="form-control" id="username" placeholder="Enter username"> 
    </div>
    <div class="form-group">
        <label for="password" class="form-label mt-4">salasana</label>
        <input name="password" type="password" class="form-control" id="password" placeholder="password"> 
    </div>
    <div class="form-group">
        <label for="password2" class="form-label mt-4">salasana uudelleen</label>
        <input name="confirmPassword" type="password" class="form-control" id="password2" placeholder="password"> 
    </div>
    <button type="register" class="btn btn-primary">register</button>
</fieldset>
</form>
</div>

<script> src="js/register.js"</script> 
<?php include_once 'layout/bottom.inc.php';?>