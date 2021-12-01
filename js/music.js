document.addEventListener('submit', getMusic);
document.getElementById('musicUl').addEventListener('click', openMusic);



function getMusic() {
    console.log('haetaan data');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showMusic(data);
    }
    ajax.open("GET", "../backend/editMusic.php");
    ajax.send();
   }

function showMusic(data) {
const ul = document.getElementById("musicUl");

}

function createMusicLi(targetUl, mus_id, mus_title) {
    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.mus_id = mus_id;

    const newDeleteBtn = document.createElement('button');
    newDeleteBtn.classList.add('btn');
    newDeleteBtn.classList.add('btn-danger');
    newDeleteBtn.classList.add('float-right');
    newDeleteBtn.dataset.action = 'delete';
    const deleteText = document.createTextNode('delete music');
    newDeleteBtn.appendChild(deleteText);
  
    const liText = document.createTextNode(mus_title);
    newLi.appendChild(liText);

    newLi.appendChild(newDeleteBtn);

    targetUl.appendChild(newLi);
}


function openMusic(event) {
    console.log(event.target.dataset);  
    const action = event.target.dataset.action;
    if (action == 'delete') {
      let mus_id = event.target.parentElement.dataset.mus_id;
      DeleteAdmin(mus_id);
      return;
    }

    
}