window.addEventListener('load', getMusic);
// document.getElementById('musicUl').addEventListener('click', openMusic);



function getMusic() {
    console.log('haetaan data');
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showMusic(data);
    }
    ajax.open("GET", "./backend/getMusic.php");
    ajax.send();
   }

function showMusic(data) {
  const ul = document.getElementById("musicUl");


  data.forEach(music => {
    createMusicLi(ul, music.mus_id, music.mus_title, music.mus_file);
  });

}

function createMusicLi(targetUl, musId, musTitle, musFile) {

    // li-elementin sisältö
    // <h4>Telemannic dreaming</h4>
    // <audio controls src="music/10 Telemannic dreaming.mp3" type="audio/mpeg"></audio>
    
    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.musId = musId;

    const musicTitle = document.createElement('h4');
    const musicTitleText = document.createTextNode(musTitle);
    musicTitle.appendChild(musicTitleText);

    const audioEl = document.createElement('audio');
    audioEl.src = `./music/${musFile}`;

    const typeAttribute = document.createAttribute('type');
    typeAttribute.value = "audio/mpeg";
    audioEl.setAttributeNode(typeAttribute);

    const musicFile = document.createElement('name');
    const musicFileAudio = document.createTextNode(musFile);
    musicFile.appendChild(musicFileAudio);


    newLi.appendChild(musicTitle);
    newLi.appendChild(audioEl);
    newLi.appendChild(musicFileAudio);

    targetUl.appendChild(newLi);
}



