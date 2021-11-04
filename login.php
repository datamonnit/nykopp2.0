<?php include_once 'layout/top.inc.php';?>
<?php include_once 'layout/nav.inc.php';?>


<?php session_start();?>

<div class="container">
<form name="login">
<fieldset>
    <div class="form-group">
        <label for="username" class="form-label mt-4">username</label>
        <input name="username" type="username" class="form-control" id="name" placeholder="Enter username"> 
    </div>
    <div class="form-group">
    <label for="exampleInputPassword1" class="form-label mt-4">password</label>
    <input type="password" type="password" class="form-control" id="exampleInputpassword1" placeholder="password">
    </div>
    <br>
    <button type="submit" class="btn btn-primary">submit</button>
</fieldset>
</form>
</div>

<?php include_once 'layout/bottom.inc.php';?>