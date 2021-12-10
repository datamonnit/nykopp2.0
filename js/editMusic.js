// get id from queryString
window.addEventListener('load', getMusic);

function getMusic() {
    console.log('haetaan dataa');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showMusic(data);
    }
    ajax.open("GET", "../backend/getMusic.php");
    ajax.send();
   }

function showMusic(data){
    const ul = document.getElementById("musicUl");

    data.forEach(music => {
     createMusicLi(ul, music.mus_id, music.mus_title)
   });

}


function createMusicLi(targetUl, musId, musTitle){

    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.musId = musId;

    const newDeleteBtn = document.createElement('button');
    newDeleteBtn.classList.add('btn');
    newDeleteBtn.classList.add('btn-danger');
    newDeleteBtn.dataset.action = 'delete';
    const DeleteText = document.createTextNode('delete music');
    newDeleteBtn.appendChild(DeleteText);

    const newEditBtn = document.createElement('button');
    newEditBtn.classList.add('btn');
    newEditBtn.classList.add('btn-primary');
    newEditBtn.dataset.action = 'edit';
    const EditText = document.createTextNode('edit music');
    newEditBtn.appendChild(EditText);

    const liText = document.createTextNode(musTitle);
    newLi.appendChild(liText);

    newLi.appendChild(newDeleteBtn);

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
    if (action == 'edit'){  
      let musId = event.target.parentElement.dataset.musId;
      editMusic(musId);
      return;
    }
     window.location.href = "../admin/manageMusic.php?id=" + event.target.dataset.musId;
}

function deleteMusic(id){
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
      data = JSON.parse(this.responseText);
      console.log(data);
      if ($data == 'success'){
        let LiToDelete = document.querySelector(`[data-mus-id="${id}"]`);
        let parent = LiToDelete.parentElement;
        parent.removeChild(LiToDelete);
      }
    }
    ajax.open("GET", "../backend/deleteMusic.php?id=" + id);
    ajax.send();
  }

  function editMusic(id) {
    alert('edit ' + id);
    window.location.href = "../admin/edit.php?id=" + id;

  }
    