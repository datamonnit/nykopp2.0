<?php 
session_start(); 
?>
<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/nav.inc.php';?>


<h1>Password Reset</h1>
<form action="Reset">
    <div class="container">
        <input type="password" name="password" placeholder="enter your new password">
        <br><br>    
        <input type="confirmPassword" name="password2" placeholder="enter your password again">
        <br>
        <button type="submit" name="reset-button">send new password</button>    
    </div>
</form>

<?php 




?>