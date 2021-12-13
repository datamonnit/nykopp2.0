//edit page
const musicQueryString = window.location.search;
const musicParams = new URLSearchParams(musicQueryString);


if (musicParams.has('id')){
    getMusicData(musicParams.get('id'));
}

document.forms['editMusic'].addEventListener("submit", modifyMusic);


function getMusicData(id){
    console.log(id);
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        console.log(data);
        //populateMusicData(data);
    }
    ajax.open("GET", "../backend/getMusic.php");
    ajax.send();
   }

function populateMusicData(data){
    document.forms['editMusic']['title'].value = data.title;
    document.forms['editMusic']['id'].value = data.id;
    document.forms['editMusic']['file'].value = data.file;
    document.forms['editMusic']['desc'].value = data.desc;

    //const target = document.querySelector('fieldset');


    data.music.forEach(function(music){
    console.log(music);
     musicCount++;
    createMusicInput(musicCount, music.id, music.title, music.file, music.desc)

    })
}

function modifyMusic(event){
    event.preventDefault();
    console.log('save changes');




// collect pollmusic from form
let pollMusic = {};
pollMusic.id = document.forms['id'].value = id;
pollMusic.title = document.forms['title'].value = title;
pollMusic.file = document.forms['file'].value = file;
pollMusic.desc = document.forms['desc'].value = desc;

const music = [];
const inputs = document.querySelectorAll('input');

inputs.forEach(function(input){
if(input.name.indexOf('music') == 0){
    music.push({ id: input.dataset.musicId, title: input.value})
    }   
})

pollMusic.music = music;


console.log(pollMusic);

//send data to backend
let ajax = new XMLHttpRequest();
ajax.onload = function(){
    let data = JSON.parse(this.responseText);
    console.log(data);
}
ajax.open("POST", "backend/modifyMusic.php", true);
ajax.setRequestHeader('Content-Type', 'application/json');
ajax.send(JSON.stringify(pollMusic));

}
