function onSetFilename(data) {
    let fileName = data.value.split("\\").pop();
    document.getElementById("custom-file-label").innerText=fileName;
    document.getElementById("progressBar").style.width="0%";
    document.getElementById("progressBar").classList.add("bg-success");
}

//tee tänne error topicille.
function uploadFile() {
    // Tarkista että otsikko on kirjoitettu
    if (document.getElementById("topic").value.length < 1){
        alert('Lisää otsikko!!');
        return;
    }

    const image_files = document.getElementById('customFile').files;
    if(image_files.length) {
        let formData = new FormData();
        formData.append('image', image_files[0]);
        formData.append('topic', document.getElementById("topic").value);
        let xhr = new XMLHttpRequest();
        xhr.open("POST", '../backend/createNewPoem.php', true);
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