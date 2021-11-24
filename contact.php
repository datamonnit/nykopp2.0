<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<div class="container">
<h1>Contact</h1>
<form name="palaute">
    <p>Name:</p>
    <input type="text" class="name" name="name" placeholder="name"></input><br>
    <p>Email:</p>
    <input type="text" class="email" name="email" placeholder="email@example.com"></input><br>
    <p>Phone number:</p>
    <input type="number" class="number" name="number" placeholder="+358 123456789"></input><br>
    <p>Feedback:</p>
    <textarea type="textarea" class="feedback" name="feedback"></textarea><br>
    <button class="btn" type="submit">Send</button>
</form>

<script src="js/contact.js"></script>
<script src="js/common.js"></script>

</div>
<?php include_once 'layout/bottom.inc.php'; ?>