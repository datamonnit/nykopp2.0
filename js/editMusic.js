// get id from queryString
const musicQueryString = window.location.search;
const musicParams = new URLSearchParams(musicQueryString);

if (musicParams.has('id')) {
    getMusicData(musicParams.get('id'));
}

function getMusicData(id) {
    console.log(id);
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        console.log(data);
        populateMusicForm(data);
    }
    ajax.open("GET", "../backend/getMusic.php");
    ajax.send();
   }

function populateMusicForm(data){
    document.forms['music']['id'].value = data.id;
}