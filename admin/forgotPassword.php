<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/nav.inc.php';?>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>resetPassword</title>
</head>
<body>
<h1>Salasanan vaihto</h1>

<form action="submit_email">
    <div class="form-group">
    <label for="email" class="form-label mt-4">sähköposti:</label>
    <input name="email" type="text" class="form-control" id="mail" placeholder="email"> 
    <br>
    <button type="submit" name="submit_email">lähetä</button>
</div>

<?php include_once '../backend/resetRequest.php';?>
    </form>
</body>
</html> 