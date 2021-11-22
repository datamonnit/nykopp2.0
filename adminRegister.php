<?php include_once 'layout/top.inc.php';?>
<?php include_once 'layout/nav.inc.php';?>
<?php include_once 'backend/pdo-connect.php'?>


<div class="container">
<div id="msg" class="alert alert-dismissible alert-warning d-none">
  <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
  <h4 class="alert-heading">Warning!</h4>
  <p class="mb-0"></a>.</p>
</div>


<form name="register">
        <fieldset>
            <legend>register</legend>
            <div class="form-group">
                <label for="username" class="form-label mt-4">käyttäjänimi</label>
                <input name="username" type="username" class="form-control" id="username" placeholder="Enter username"> 
            </div>
            <div class="form-group">
                <label for="password" class="form-label mt-4">salasana</label>
                <input name="pwd" type="password" class="form-control" id="pwd" placeholder="password"> 
            </div>
            <div class="form-group">
                <label for="password" class="form-label mt-4">salasana uudelleen</label>
                <input name="confirmPassword" type="password" class="form-control" id="confirm" placeholder="password"> 
            </div>
            <div class="form-group">
                <label for="email" class="form-label mt-4">sähköposti</label>
                <input name="email" type="text" class="form-control" id="email" placeholder="enter your email here"> 
            </div>
            <button type="submit" name="submit" value="log in" class="btn btn-primary">submit</button>

            <div class="container">
            <a href="./forgotPassword.php"><p>unohditko salasanan</p></a>
            </div>
        </fieldset>
    </form>
</div>




<script src="js/register.js"></script>
<script src="js/common.js"></script> 

<?php include_once 'layout/bottom.inc.php'; ?>