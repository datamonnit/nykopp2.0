// portfolio-page js

const thumbPath = 'new_images/thumbs';
const dziPath = 'new_images/dzi';

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
        newLi.dataset.dzi = images_uusi.dzi_file;
        newLi.dataset.imageid = images_uusi.id;
        newLi.dataset.thumbPath = thumbPath;
        newLi.dataset.dzipath = dziPath;

        // img-elementti
        const newImg = document.createElement('img');
        newImg.src = `${thumbPath}/${images_uusi.dzi_file}.png`;
        newLi.appendChild(newImg);

        // span-elementti
        const newSpan = document.createElement('span')  
        const liText = document.createTextNode(images_uusi.name);
        newSpan.appendChild(liText)

        // li-elementti 
        
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
    
    // const fullPath = thumbPath + '/' + liElement.dataset.dzi ;
    const fullPath = `${dziPath}/${liElement.dataset.dzi}.dzi`;
    console.log(liElement.dataset.imagename);
    console.log(liElement.dataset.imageid);
    console.log(fullPath);

    vaihdadzi(fullPath,"sss", 0.5)

   
    
}

function backToCategories(event){
    event.preventDefault();
    document.getElementById('portfolioUl').classList.remove('d-none');
    document.getElementById('imagesUl').classList.add('d-none');

    document.getElementById('link-back').classList.remove('d-none');
}

function vaihdadzi(path,y,t){
    viewer.open(path)
    viewer.addHandler('open', function() {
        var targetZoom = 0.8;
        var imageBounds = viewer.world.getItemAt(0).getBounds();
        var viewportBounds = viewer.viewport.getBounds();
        var imageAspect = imageBounds.width / imageBounds.height;
        var viewportAspect = viewportBounds.width / viewportBounds.height;
        var aspectFactor = imageAspect / viewportAspect;
        var zoomFactor = (aspectFactor >= 1 ? 1 : aspectFactor) * targetZoom;
        viewer.viewport.defaultZoomLevel = zoomFactor / imageBounds.width;
        viewer.viewport.goHome(true);
    });

    var zoomLevel =  t;
    viewer.viewport.zoomTo(zoomLevel);
    // document.getElementById("tiedot").innerHTML = y;
    // document.getElementById("nonzoomableimage").style.display="none";
    // document.getElementById("openseadragon1").style.display="block";
    // document.getElementById("tiedot").style.display="block";
  }

  function vaihda(z,y){
    document.getElementById("tiedot").innerHTML = y;
    document.getElementById("nonzoomableimage").src=z;
    document.getElementById("nonzoomableimage").style.display="block";
    document.getElementById("openseadragon1").style.display="none";
    document.getElementById("tiedot").style.display="block";
  }