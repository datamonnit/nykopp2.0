document.forms['addimages'].addEventListener('submit', addImages);

function addImages(event){
    event.preventDefault();
    console.log('save new image');

    const name = document.forms['addimages']['name'].value;
    const dzi_file = document.forms['addimages']['dzi_file'].value;
    const category = document.forms['addimages']['category'].value;
    const size = document.forms['addimages']['size'].value;
    const technic = document.forms['addimages']['technic'].value;
    const year = document.forms['addimages']['year'].value;

    let postData = `name=${name}&dzi_file=${dzi_file}&category=${category}&size=${size}&technic=${technic}&year=${year}`;
    
    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if(data.hasOwnProperty('success')) {
            console.log("image successfully added")
        } else {
            showMessage('error', data.error);
            die();
        }
    }

    ajax.open("POST", "../backend/createNewImage.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajax.send(postData);
}