window.addEventListener('load', getPoems);
document.getElementById('poemsUl').addEventListener('click', openPoem);


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

    
        const liText = document.createTextNode(poemTitle);
        newLi.appendChild(liText);
    
        targetUl.appendChild(newLi);
    }


    function openPoem(event) {
        console.log(event.target.dataset);  
        const action = event.target.dataset.action;
        if (action == 'delete') {
          let poemId = event.target.parentElement.dataset.poemId;
          deletePoem(poemId);
          return;
        }
        if (action == 'edit'){  
          let poemId = event.target.parentElement.dataset.poemId;
          editPoem(poemId);
          return;
        }
         window.location.href = "./showPoem.php?id=" + event.target.dataset.poemId;
    }
    
