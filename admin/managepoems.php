<?php include_once '../layout/top.inc.php';?>
<?php include_once '../layout/admin-nav.inc.php';?>

<div class="container">
    <h1>Manage poems</h1>
</div>

<div class="container">
    <div class="row">
        <div class="col">
            <h2>Add new</h2>  
            <div class="card">
                <div class="card-header">Valitse Tiedosto</div>
                <div class="card-body">
                        <input type="text" class="form-control" id="topic" placeholder="topic">
                        <h2></h2>
                    <div class="custom-file">
                        <input type="file" name="image_file" class="custom-file-input" id="customFile" onchange="onSetFilename(this)">
                        <label class="custom-file-label" id="custom-file-label" for="customFile"></label>
                    </div>
                    <div class="progress mt-3">
                        <div id="progressBar" class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 0%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <button type="button" onclick="uploadFile()" class="btn btn-warning text-white mt-2">Upload File</button>
                </div>
            </div>
        </div>

    <div class="col">

        <h2>Poems</h2>
    <ul id="poemsUl" class="list-group">
    </ul>


        </div>
    </div>
    
</div>

<script src="../js/managePoems.js"></script>
<script src="../js/common.js"></script>

<?php include_once '../layout/bottom.inc.php'; ?>