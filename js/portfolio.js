// portfolio-page js

window.addEventListener('load', getPortfolio);
document.getElementById('portfolioUl').addEventListener('click', openCategory);
document.getElementById('imagesUl').addEventListener('click', openImages);

let data = null;

function getPortfolio(){
    console.log('Haetaan data');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        showPortfolio();
    }
    ajax.open("GET", "backend/getPortfolio.php");
    ajax.send();
}

/* <li class="list-group-item">
        <a class="btn" data-bs-toggle="offcanvas" href="#offcanvasExample2" role="button" aria-controls="offcanvasBottom">
          <svg class="bi me-2" width="12" height="12"><use xlink:href="#table"/></svg>
          Orders
        </a>
    </li> */
function showPortfolio(){

    const ul = document.getElementById("portfolioUl");
    ul.innerHTML = "";

    data.forEach(category => {

        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.imagecategory = category.name;

        const liText = document.createTextNode(category.name);
        newLi.appendChild(liText);

        ul.appendChild(newLi);
    })
}

function openCategory(event){
    console.log(event.target.dataset.imagecategory);
    window.location.href = "portfolio.php?category=" + event.target.dataset.imagecategory;
    const ul = document.getElementById("imagesUl");
    ul.innerHTML = "";

    data.forEach(images_uusi => {
        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.imagename = images_uusi.name;

        const liText = document.createTextNode(images_uusi.name);
        newLi.appendChild(liText);

        ul.appendChild(newLi);
    })
}

function openImages(event){
    console.log(event.target.dataset.imagename);
    window.location.href = "portfolio.php?image=" + event.target.dataset.imagename;
}