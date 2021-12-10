//edit page
const musicQueryString = window.location.search;
const musicParams = new URLSearchParams(musicQueryString);

if (musicParams.has('id')){
    getMusicData(musicParams.get('id'));
}



function getMusicData(id){
    console.log(id);
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        console.log(data);
        populateMusicData(data);
    }
    ajax.open("GET", "../backend/getMusic.php");
    ajax.send();
   }

function populateMusicData(data){
    document.forms['editMusic']['id'].value = data.id;
    document.forms['editMusic']['title'].value = data.title;
    document.forms['editMusic']['file'].value = data.file;
    document.forms['editMusic']['desc'].value = data.desc;

    data.music.forEach(function(music){
    console.log(music);

    })
}

function createMusicInput(targetUl, mus_id, music_title, music_file, music_desc);



// function createAdminLi(targetUl, userId, userName){

//     const newLi = document.createElement('li');
//     newLi.classList.add('list-group-item');
//     newLi.dataset.userId = userId;
  
//     const newDeleteBtn = document.createElement('button');
//     newDeleteBtn.classList.add('btn');
//     newDeleteBtn.classList.add('btn-danger');
//     newDeleteBtn.dataset.action = 'delete';
//     const deleteText = document.createTextNode('delete admin');
//     newDeleteBtn.appendChild(deleteText);
  
//     const liText = document.createTextNode(userName);
//     newLi.appendChild(liText);
  
//     newLi.appendChild(newDeleteBtn);
  
//     targetUl.appendChild(newLi);
//   }
