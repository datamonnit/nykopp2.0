// portfolio-page js

const imagePath = 'new_images/thumbs';

window.addEventListener('load', getPortfolio);
document.getElementById('portfolioUl').addEventListener('click', openCategory);
document.getElementById('imagesUl').addEventListener('click', openImages);

document.getElementById('link-back').addEventListener('click', backToCategories);

let categories = null;
let images = null;

function getPortfolio(){
    console.log('Haetaan data');
    let ajax = new XMLHttpRequest();
    // Haetaan kategoriat
    ajax.onload = function(){
        categories = JSON.parse(this.responseText);
        showCategories();
    }
    ajax.open("GET", "backend/getCategories.php");
    ajax.send();
    let ajax2 = new XMLHttpRequest();
    // Haetaan kuvat
    ajax2.onload = function(){
        images = JSON.parse(this.responseText);
    }
    ajax2.open("GET", "backend/getImages.php");
    ajax2.send();
}

/* <li class="list-group-item">
        <a class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample2" role="button" aria-controls="offcanvasBottom">
          <svg class="bi me-2" width="12" height="12"><use xlink:href="#table"/></svg>
          Orders
        </a>
    </li> */
function showCategories(){

    const ul = document.getElementById("portfolioUl");
    ul.innerHTML = "";

    categories.forEach(category => {

        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.imagecategory = category.name;

        const liText = document.createTextNode(category.name);
        newLi.appendChild(liText);
        newLi.dataset.categoryid = category.id

        ul.appendChild(newLi);
    })
}
/* 
Ladataan kategorian mukaiset teokset
*/
function openCategory(event){
    console.log(event.target.dataset.imagecategory);

    console.log(event.target.dataset.categoryid);

    document.getElementById('portfolioUl').classList.add('d-none');

    document.getElementById('imagesUl').classList.remove('d-none');

    document.getElementById('link-back').classList.remove('d-none');
    
    const categoryId = event.target.dataset.categoryid;

    // Hae backendistä tämän categorian kuvat


    // window.location.href = "portfolio.php?category=" + event.target.dataset.imagecategory;
    const ul = document.getElementById("imagesUl");
    ul.innerHTML = "";

    const catImages = images.filter( image => {
        return image.categoryid == categoryId
    })

    catImages.forEach(images_uusi => {
        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.imagename = images_uusi.name;
        newLi.dataset.imageid = images_uusi.id;
        newLi.dataset.imagepath = imagePath;
        newLi.dataset.imgfile = images_uusi.dzi_file;

        // img-elementti
        const newImg = document.createElement('img');
        newImg.src = `${imagePath}/${images_uusi.dzi_file}.png`;
        newLi.appendChild(newImg);

        const newSpan = document.createElement('span');
        const liText = document.createTextNode(images_uusi.name);
        newSpan.appendChild(liText);

        newLi.appendChild(newSpan);

        ul.appendChild(newLi);
    })
}

function openImages(event){

    // Check if element has imageid
    let liElement;
    if (!event.target.dataset.imageid){
        liElement = event.target.parentElement;
    } else {
        liElement = event.target;
    }

    // const li = event.target.parentElement;

    const fullPath = imagePath + '/' + liElement.dataset.imgfile;

    console.log(liElement.dataset.imagename);
    console.log(liElement.dataset.imageid);
    console.log(fullPath);
    
}

function backToCategories(event){
    event.preventDefault();
    document.getElementById('portfolioUl').classList.remove('d-none');
    document.getElementById('imagesUl').classList.add('d-none');

    document.getElementById('link-back').classList.remove('d-none');
}