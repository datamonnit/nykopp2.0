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
    document.forms['editMusic']['mus_title'].value = music.title;
    document.forms['editMusic']['mus_id'].value = music.id;
    document.forms['editMusic']['mus_file'].value = music.file;
    document.forms['editMusic']['mus_desc'].value = music.desc;

    //const target = document.querySelector('fieldset');


    data.music.forEach(function(music){
    console.log(music);
     musicCount++;
    createMusicInput(musicCount, music.mus_id, music.mus_title, music.mus_file, music.mus_desc)

    })
}

function modifyMusic(event){
    event.preventDefault();
    console.log('save changes');




// collect pollmusic from form
let pollMusic = {};
pollMusic.id = document.forms['id'].value = music.id;
pollMusic.title = document.forms['title'].value = music.title;
pollMusic.file = document.forms['file'].value = music.file;
pollMusic.desc = document.forms['desc'].value = music.desc;

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
