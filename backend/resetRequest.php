<?php 
if (!isset($_POST["reset-request-submit"])) {

  $selector = bin2hex(random_bytes(8));
  $token = random_bytes(32);

  $url = "nykopp2/password/forgotPassword.php/reset-password.php?selector=" . $selector . "&validator=" . bin2hex($token) . 

  $expires = date("U") + 1800;

include_once 'pdo-connect.php';
include_once 'createNewadmin.php';


$mail = $_POST["mail"];

$sql = "DELETE FROM pwdReset WHERE pwdResetEmail=?";
$stmt = mysqli_stmt_init($conn);
if (!mysqli_stmt_prepare($stmt, $sql)) {
  echo "there was an error";
  exit();
} else {
  mysqli_stmt_bind_param($stmt, "s", $mail);
  mysqli_stmt_execute($stmt);
}

$sql = "INSERT INTO pwdReset (pwdResetEmail, PwdResetSelector, pwdResetToken, pwdResetExpires) VALUES (?, ?, ?, ?);";

$stmt = mysqli_stmt_init($conn);
if (!mysqli_stmt_prepare($stmt, $sql)) {
  echo "there was an error";
  exit();
} else {

  mysqli_stmt_bind_param($stmt, "ssss", $mail, $selector, $password, $expires);
  mysqli_stmt_execute($stmt);
}

mysqli_stmt_close($stmt);
mysqli_close();

$to = $mail;

$subject = 'reset your password for nykopp2';

$message = '<p>We recieved a password reset request. the link to reset your password makes this request, you can ignore this email</p>';
$message .= '<p> here is your password reset link </br>';
$message .= '<a href=">' . $url . '">' . $url . '</a></p>';


//$headers 

} else {
  header("location: ../index.php");
}









//<?php
//if(isset($_POST['submit_email']) && $_POST['ema
//il'])
//{
  //mysql_connect('localhost','root','');
  //mysql_select_db('sample');
  //$select=mysql_query("select email,password from user where email='$email'");
  //if(mysql_num_rows($select)==1)
  //{
//    while($row=mysql_fetch_array($select))
  //  {
    //  $email=md5($row['email']);
    //  $pass=md5($row['password']);
    //}
  //  $link="<a href='www.samplewebsite.com/reset.php?key=".$email."&reset=".$pass."'>Click To Reset password</a>";
  //  require_once('phpmail/PHPMailerAutoload.php');
  //  $mail = new PHPMailer();
  //  $mail->CharSet =  "utf-8";
  //  $mail->IsSMTP();
    // enable SMTP authentication
  //  $mail->SMTPAuth = true;                  
    // GMAIL username
  //  $mail->Username = "your_email_id@gmail.com";
    // GMAIL password
  //  $mail->Password = "your_gmail_password";
  //  $mail->SMTPSecure = "ssl";  
    // sets GMAIL as the SMTP server
  //  $mail->Host = "smtp.gmail.com";
    // set the SMTP port for the GMAIL server
 //   $mail->Port = "465";
 //   $mail->From='your_gmail_id@gmail.com';
 //   $mail->FromName='your_name';
 //   $mail->AddAddress('reciever_email_id', 'reciever_name');
 //   $mail->Subject  =  'Reset Password';
 //   $mail->IsHTML(true);
  //  $mail->Body    = 'Click On This Link to Reset Password '.$pass.'';
  //  if($mail->Send())
  //  {
    //  echo "Check Your Email and Click on the link sent to your email";
   // }
   // else
   // {
   //   echo "Mail Error - >".$mail->ErrorInfo;
   // }
 // }	
//}
?>


