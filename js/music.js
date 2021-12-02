document.addEventListener('load', getMusic);
document.getElementById('musicUl').addEventListener('submit', openMusic);



function getMusic() {
    console.log('haetaan data');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showMusic(data);
    }
    ajax.open("GET", "../backend/getMusic.php");
    ajax.send();
   }

function showMusic(data) {
const ul = document.getElementById("musicUl");

data.forEach(music => {
  createMusicLi(ul, music.id, music.title)
});

}

function createMusicLi(targetUl, musId, mus_title) {
    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.musId = musId;

    const newDelBtn = document.createElement('button');
    newDelBtn.classList.add('btn');
    newDelBtn.classlist.add('btn-danger');
    const deleteText = document.createTextNode('delete music');
    newDelBtn.dataset.action = 'delete';

      const newEditBtn = document.createElement('button');
      const editText = document.createTextNode('Edit');
      newEditBtn.appendChild(editText);

    
    newDelBtn.appendChild(deleteText);
  
    const liText = document.createTextNode(mus_title);
    newLi.appendChild(liText);

    newLi.appendChild(newDelBtn);
    newLi.appendChild(newEditBtn);

    targetUl.appendChild(newLi);
}


function openMusic(event) {
    console.log(event.target.dataset);  
    const action = event.target.dataset.action;
    if (action == 'delete') {
      let musId = event.target.parentElement.dataset.musId;
      deleteMusic(musId);
      return;
    }

     window.location.href = "../admin/manageMusic.php?id=" + event.target.dataset.musId;
}

function deleteMusic(id){
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
      data = JSON.parse(ajax.responseText);
      console.log(data);
      let LiToDelete = document.querySelector(`[data-mus-id="${id}"]`);
      let parent = LiToDelete.parentElement;
      parent.removeChild(LiToDelete);
    }
    ajax.open("GET", "../backend/deleteMusic.php?id=" + id);
    ajax.send();
  }
