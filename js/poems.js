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
    ajax.open("GET", "../backend/getPoem.php");
    ajax.send();
}

function showPoems(data){
    const ul = document.getElementById("poemsUl");

    data.forEach(poem => {
        createPoemsLi(ul, poem.poem_id, poem.poem_title)
        // document.createElement('li');
        //     const newLi = document.createElement('li');
        //     newLi.classList.add('list-group-item');

        //     const liText = document.createTextNode(poem.topic);
        //     newLi.appendChild(liText);

        //     ul.appendChild(newLi);
        });
    }


function createPoemsLi(targetUl, poemId, poemTitle) {

// li-elementin sisältö
                
        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');
        newLi.dataset.poemId = poemId;
    
        const newDeleteBtn = document.createElement('button');
        newDeleteBtn.classList.add('btn');
        newDeleteBtn.classList.add('btn-danger');
        newDeleteBtn.dataset.action = 'delete';
        const deleteText = document.createTextNode('delete poem');
        newDeleteBtn.appendChild(deleteText);
    
        const newEditBtn = document.createElement('button');
        newEditBtn.dataset.action = 'edit';
        newEditBtn.classList.add('btn');
        newDeleteBtn.classList.add('btn-danger');
        const editText = document.createTextNode('Edit');
        newEditBtn.appendChild(editText);
    
        const liText = document.createTextNode(poemTitle);
        newLi.appendChild(liText);
    
    
        newLi.appendChild(newDeleteBtn);
        newLi.appendChild(newEditBtn);
    
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
         window.location.href = "../admin/managepoems.php?id=" + event.target.dataset.poemId;
    }
    
    function deletePoem(id){
        let ajax = new XMLHttpRequest();
        ajax.onload = function(){
          data = JSON.parse(this.responseText);
          console.log(data);
          let LiToDelete = document.querySelector(`[data-poem-id="${id}"]`);
          let parent = LiToDelete.parentElement;
          parent.removeChild(LiToDelete);
        }
        ajax.open("GET", "../backend/deleteAdmin.php?id=" + id);
        ajax.send();
      }
    
      function editPoem(id) {
        alert('edit ' + id);
        window.location.href = "../backend/editPoem.php?id=" + id;
    
      }