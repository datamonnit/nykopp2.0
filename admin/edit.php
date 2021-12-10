<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/nav.inc.php'; ?>    
<form name="editMusic">
    <div class="container">
        <div class="col">
          <fieldset>
            <h3>editointi</h3>
            <form class="editMusic">
            <input type="hidden" name="id">   
            <label for="title">musiikin otsikko</label>
            <input name="title" type="text" class="form-control" placeholder="title">
            <label for="file">musiikin tiedosto</label>
            <input name="file" type="text" class="form-control" placeholder="file">
            <label for="desc">musiikin alaotsikko</label>
            <input name="desc" type="text" class="form-control" placeholder="desc">
            <button type="submit" class="btn btn-primary">tallenna muutokset</button>
            </li>
          </fieldset>  
        </div>  
    </div>
</form>

<script src="../js/common.js"></script>
<script src="../js/edit.js"></script>
<?php include_once '../layout/bottom.inc.php';?>