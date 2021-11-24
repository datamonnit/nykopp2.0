<?php include_once 'layout/top.inc.php';  ?>
<?php include_once 'layout/nav.inc.php';  ?>


<div class="container">
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
</div>

<script src="js/common.js"></script> 
<script src="js/login.js"></script>

<?php include_once 'layout/bottom.inc.php'; ?>
