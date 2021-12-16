document.getElementById('poemsUl').addEventListener('click', openPoem);


if (urlParams.has('id')) {
    const id = urlParams.get('id');
    showPoem(id);
} else {
    window.addEventListener('load', getPoems);
}

function showPoem(id){
    console.log('Haetaan data')
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        console.log(data)
    }
    ajax.open("GET", "./backend/listPoems.php");
    ajax.send();
}



// Get all poems from database and show on manage page
function getPoems(){
    console.log('Haetaan data')
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showPoems(data);
    }
    ajax.open("GET", "./backend/listPoems.php");
    ajax.send();
}

function showPoems(data){
    const ul = document.getElementById("poemsUl");

    data.forEach(poem => {
        createPoemsLi(ul, poem.poem_id, poem.poem_title)
        });
    }

function createPoemsLi(targetUl, poemId, poemTitle) {

// li-elementin sisältö
                
        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.poemId = poemId;

        const newButton = document.createElement('button');
        newButton.classList.add('btn');
        newButton.classList.add('btn-primary');
        newButton.dataset.action =  'open';

        const btnText = document.createTextNode('Open');
        newButton.appendChild(btnText);

        newLi.appendChild(newButton);

    
        const liText = document.createTextNode(poemTitle);
        newLi.appendChild(liText);
    
        targetUl.appendChild(newLi);
    }

    //document.getElementById("btn-btn-primary").addEventListener("click", displayDate);

    function openPoem(event) {
        // console.log(event.target.dataset);
        const action = event.target.dataset.action;
        if (action == 'open') {
          let poemId = event.target.parentElement.dataset.poemId;
          window.location.href = "./showPoem.php?id=" + poemId;
          return;
        }
        
    }



    /*
        var poems = [...];
        createLiElement(poems);
        ...
        function createLiElement(poems){
        elem = ... 
        elem.poemData = poems[i];
        elem.addEventListener('click', openPoem);
        }

        function openPoem(elem){

        var poem = elem.poemData;
        createHTMLElement(poem);
        }

        function createHTMLElement(poem){
        poemElemRoot = document.getElementById('poemContainer');
        */