<?php include_once 'layout/top.inc.php';?>
<?php include_once 'layout/nav.inc.php';?>


<?php session_start();?>

<div class="container">

  <div id="msg" class="alert alert-dismissible alert-warning d-none">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <h4 class="alert-heading">Warning!</h4>
    <p class="mb-0"></a>.</p>
  </div>
</div>

<div class="container">
<form name="login">
<fieldset>
    <div class="form-group">
        <label for="username" class="form-label mt-4">username</label>
        <input name="username" type="username" class="form-control" id="username" placeholder="Enter username"> 
    </div>
    <div class="form-group">
    <label for="email" class="form-label mt-4">email</label>
    <input type="email" type="email" class="form-control" id="emailUsers" placeholder="emailUsers">
    </div>
    <div class="form-group">
        <label for="exampleInputpassword1" class="form-label mt-4">password</label>
        <input name="password" type="password" class="form-control" id="passwd" placeholder="password"> 
    </div>
    <button type="submit" class="btn btn-primary">submit</button>
</fieldset>
</form>
</div>


<?php include_once 'backend/registerNewUser.php';?>
<?php include_once 'layout/bottom.inc.php';?>