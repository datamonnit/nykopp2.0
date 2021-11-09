<?php session_start(); ?>
<?php include_once 'layout/top.inc.php'; ?>
<?php include_once 'layout/nav.inc.php'; ?>
<?php include_once 'layout/bottom.inc.php'; ?>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />       
<div class="container mt-5">
    <div class="offset-2 col-md-6">
        <div class="card">
            <div class="card-header">File Upload Example With Progressbar - CodeInHouse.com</div>
            <div class="card-body">
                <div class="custom-file">
                    <input type="file" name="image_file" class="custom-file-input" id="customFile" onchange="onSetFilename(this)">
                    <label class="custom-file-label" id="custom-file-label" for="customFile">Choose file</label>
                </div>
                <div class="progress mt-3">
                    <div id="progressBar" class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 0%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <button type="button" onclick="uploadFile()" class="btn btn-warning text-white mt-2">Upload File</button>
            </div>
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
 
    function uploadFile() {
        const image_files = document.getElementById('customFile').files;
        if(image_files.length) {
            let formData = new FormData();
            formData.append('image', image_files[0]);
            let xhr = new XMLHttpRequest();
            xhr.open("POST", 'upload.php', true);
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
                        document.getElementById("progressBar").classList.add("bg-danger");
                        alert("Image Uploading failed. Try again..")
                    }
                }
            };
            xhr.send(formData);
        } else {
            alert("No image selected");
        }   
    }
</script>
