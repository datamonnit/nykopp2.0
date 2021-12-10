<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/nav.inc.php'; ?>    
<form name="editMusic">
    <div class="container">
     <div class="row">
        <div class="col">
            <h3>editointi</h3>
            <li class="form-group">
            <label for="title">musiikin otsikko</label>
            <input name="title" type="text" class="form-control" placeholder="title">
            <label for="file">musiikin tiedosto</label>
            <input name="file" type="text" class="form-control" placeholder="file">
            <label for="desc">musiikin alaotsikko</label>
            <input name="desc" type="text" class="form-control" placeholder="desc">
            <button type="button" onclick="editMusic()" name="edit">editointi</button>
            </li>
        </div>  
     </div>
    </div>
</form>
<script src="../js/editMusic.js">
<script src="../js/common.js">

<?php include_once '../layout/bottom.inc.php';?>