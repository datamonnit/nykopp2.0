/* 

editMusic.js

JS for adminMusic.php

Last edit: 2022-01-25

*/

// get id from queryString
window.addEventListener('load', getMusic);
document.getElementById('musicUl').addEventListener('click', openMusic);

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
     createMusicLi(ul, music.mus_id, music.mus_title, music.mus_file, music.mus_desc)
   });

}


function createMusicLi(targetUl, musId, musTitle, musFile, musDesc){

    // li for song
    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.musId = musId;

    // button group for buttons
    const buttonGroup = document.createElement('div');
    buttonGroup.setAttribute('role','group');
    buttonGroup.setAttribute('aria-label','Music edit buttons')
    buttonGroup.classList.add('btn-group');
    buttonGroup.classList.add('float-end');
    
    // delete button
    const newDeleteBtn = document.createElement('button');
    newDeleteBtn.classList.add('btn');
    newDeleteBtn.classList.add('btn-danger');
 
    newDeleteBtn.dataset.action = 'delete';
    const DeleteText = document.createTextNode('delete music');
    newDeleteBtn.appendChild(DeleteText);

    // edit button
    const newEditBtn = document.createElement('button');
    newEditBtn.classList.add('btn');
    newEditBtn.classList.add('btn-primary');
    newEditBtn.dataset.action = 'edit';
    const EditText = document.createTextNode('edit music');
    newEditBtn.appendChild(EditText);

    buttonGroup.appendChild(newDeleteBtn);
    buttonGroup.appendChild(newEditBtn);

    newLi.appendChild(buttonGroup);

    const liText = document.createTextNode(musTitle);
    const musicDescriptionText = document.createTextNode(musDesc)
    const musicHeader = document.createElement('h3')
    const musicDescription = document.createElement('p')

    musicHeader.appendChild(liText);
    musicDescription.appendChild(musicDescriptionText)
    newLi.appendChild(musicHeader);
    newLi.appendChild(musicDescription)

    // audio element
    const audioEl = document.createElement('audio');
    audioEl.src = `./music/${musFile}`;
    
    // audio - type
    const typeAttribute = document.createAttribute('type');
    typeAttribute.value = "audio/mpeg";
    audioEl.setAttributeNode(typeAttribute);
    
    // audio controls
    const controlsAttribute = document.createAttribute('controls');
    audioEl.setAttributeNode(controlsAttribute);

    newLi.appendChild(audioEl);

    targetUl.appendChild(newLi);
}

function openMusic(event) {

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
        let LiToDelete = document.querySelector(`[data-mus-id="${id}"]`);
        let parent = LiToDelete.parentElement;
        parent.removeChild(LiToDelete);
    }
    ajax.open("GET", "../backend/deleteMusic.php?id=" + id);
    ajax.send();
  }

  function editMusic(id) {
    
    window.location.href = "../admin/editMusic.php?id=" + id;

  }
    