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
    ajax.open("GET", "../backend/getMusic.php?id=" + id);
    ajax.send();
   }

function populateMusicForm(data){
   document.forms['editMusic']['mus_id'].value = data.id;
   document.forms['editMusic']['mus_title'].value = data.title;
   document.forms['editMusic']['mus_file'].value = data.file;
   document.forms['editMusic']['mus_desc'].value = data.file;
}
