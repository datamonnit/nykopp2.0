<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/nav.inc.php'; ?>    
    <div class="container">
      <div class="col">
        <form name="editMusic">
          <fieldset>
            <h3>editointi</h3>
            <div class="form-group">
            <input type="hidden" name="id">   
            <label for="title">musiikin otsikko</label>
            <input name="title" type="text" class="form-control" placeholder="title">
            <label for="file">musiikin tiedosto</label>
            <input name="file" type="text" class="form-control" placeholder="file">
            <label for="desc">musiikin alaotsikko</label>
            <input name="desc" type="text" class="form-control" placeholder="desc">
            </li>
          </fieldset>
          <button type="submit" class="btn btn-primary">tallenna muutokset</button>  
        </div>  
    </div>
</div>

<script src="../js/common.js"></script>
<script src="../js/edit.js"></script>
<?php include_once '../layout/bottom.inc.php';?>