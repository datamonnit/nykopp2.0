<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>

<div class="container">
    <h1>Contact</h1>
    <form name="palaute">
        <p>Name:</p>
        <input type="text" class="name" name="name" placeholder="name"></input><br>
        <p>Email:</p>
        <input type="email" class="email" name="email" placeholder="email@example.com"></input><br>
        <p>Phone number:</p>
        <input type="text" class="number" name="number" placeholder="+358 123456789"></input><br>
        <p>Feedback:</p>
        <textarea type="textarea" class="feedback" name="feedback" rows="8" cols="50"></textarea><br>
        <button class="btn" type="submit">Send</button>
    </form>
</div>

<script src="js/contact.js"></script>
<script src="js/common.js"></script>

<?php include_once 'layout/bottom.inc.php'; ?>