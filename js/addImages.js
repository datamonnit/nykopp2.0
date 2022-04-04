window.addEventListener('load', loadCategories);
document.forms['addimages'].addEventListener('submit', addImages);

function loadCategories() {
    console.log('Load Categories');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        console.log(data);

        const selectElement = document.getElementById("selectCategory");
        data.forEach(category => {
            const optionElement = document.createElement("option");

            const categoryText = document.createTextNode(category.name);
            optionElement.appendChild(categoryText);

            optionElement.setAttribute('value', category.id);
            // optionElement.setAttribute('id', category.id);

            selectElement.appendChild(optionElement);
        });

    }
    ajax.open("GET", "../backend/getCategories.php");
    ajax.send();
}

function addImages(event){
    event.preventDefault();
    // console.log('save new image');

    const name = document.forms['addimages']['name'].value;
    const dzi_file = document.forms['addimages']['dzi_file'].value;
    const imgzoom = document.forms['addimages']['imgzoom'].value;
    const category = document.forms['addimages']['selectCategory'].value;
    const categoryid = document.forms['addimages']['selectCategory'].id;
    const size = document.forms['addimages']['size'].value;
    const technic = document.forms['addimages']['technic'].value;
    const year = document.forms['addimages']['year'].value;

    if (name.length <= 0 || dzi_file.length <= 0 || selectCategory.value == 0 || size.length <= 0 || technic.length <= 0 || year.length <= 0)   { 
        console.log('error', 'fill all fields');
        return;
    } 

    let postData = `name=${name}&dzi_file=${dzi_file}&imgzoom=${imgzoom}&category=${category}&categoryid=${categoryid}&size=${size}&technic=${technic}&year=${year}`;
    
    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if(data.hasOwnProperty('success')) {
            console.log("image successfully added")
        } else {
            console.log('error', data.error);
            die();
        }
    }

    ajax.open("POST", "../backend/createNewImage.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajax.send(postData);
}