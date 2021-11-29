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

<script>   
    function onSetFilename(data) {
        let fileName = data.value.split("\\").pop();
        document.getElementById("custom-file-label").innerText=fileName;
        document.getElementById("progressBar").style.width="0%";
        document.getElementById("progressBar").classList.add("bg-success");
    }

    //tee tänne error topicille
    function uploadFile() {
        if (document.getElementById("topic").value.length < 1){
            alert('Lisää otsikko!!');
            return;
        }

        const image_files = document.getElementById('customFile').files;
        if(image_files.length) {
            let formData = new FormData();
            formData.append('image', image_files[0]);
            let xhr = new XMLHttpRequest();
            xhr.open("POST", '../backend/upload.php', true);
            xhr.addEventListener("progress", function (e) {
                if(e.lengthComputable) {
                    let percentComplete = e.loaded / e.total * 100;
                    document.getElementById("progressBar").style.width=percentComplete + '%';
                }
            }, false);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    const data = JSON.parse(this.responseText);
                    if(data.success === 1) {
                        document.getElementById("progressBar").classList.remove("bg-success");
                        //document.getElementById("progressBar").classList.add("bg-danger");
                        //alert("Image Uploading failed. Try again..")
                    }
                }
            };
            xhr.send(formData);
        } else {
            alert("No file selected");
        }
    }

</script>

  <script src="js/poems.js"></script>
  <script src="js/common.js"></script>
  <?php include_once 'layout/bottom.inc.php'; ?>

<div class="container">
  <div id="msg" class="alert alert-dismissible alert-warning d-none">
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    <h4 class="alert-heading"></h4>
    <p class="mb-0"></p>
  </div>
</div>