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
        populateMusicForm(data);
    }
    ajax.open("GET", "../backend/getEditMusic.php");
    ajax.send();
   }

function populateMusicForm(data){
    document.forms['editMusic']['id'].value = data.mus_id;
    document.forms['editMusic']['title'].value = data.mus_title;
    document.forms['editMusic']['file'].value = data.mus_file;
    document.forms['editMusic']['desc'].value = data.mus_desc;

    const target = document.querySelector('fieldset');


    data.music.forEach(function(music){
    console.log(music);
    target.appendChild(createMusicInput(music.mus.id, music.mus.title, music.mus.file, music.mus.desc));

    })
}
function createMusicInput(mus_id, mus_title, mus_file, mus_desc){
 
input.value = mus_title;

 input.dataset.musId = mus_id; 
 
 input.value = mus_file;

 input.value = mus_desc;


}   
function modifyMusic(event){
    event.preventDefault();
    console.log('save changes');
    



// collect pollmusic from form
let pollMusic = {};
pollMusic.id = document.forms['id'].value;
pollMusic.title = document.forms['title'].value;
pollMusic.file = document.forms['file'].value;
pollMusic.desc = document.forms['desc'].value;

const music = [];
const inputs = document.querySelectorAll('input');

inputs.forEach(function(input){
if(input.name.indexOf('music') == 0){
    music.push({ id: input.dataset.musicId, name: input.value})
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
ajax.open("POST", "../backend/modifyMusic.php", true);
ajax.setRequestHeader('Content-Type', 'application/json');
ajax.send(JSON.stringify(pollMusic));

}
