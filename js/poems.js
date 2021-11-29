// poems page js

window.addEventListener('load', getPolls);


/*
Get all poems from database and show on manage page
*/

function getPoems(){
    console.log('Haetaan data')
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        showPolls(data);
    }
    ajax.open("GET", "backend/getPoems.php");
    ajax.send();
}

function showPoems(data){

    const ul = document.getElementById("votesUl");

    data.forEach(poem => {
        document.createElement('li');
            const newLi = document.createElement('li');
            newLi.classList.add('list-group-item');

            const liText = document.createTextNode(poem.topic);
            newLi.appendChild(liText);

            ul.appendChild(newLi);

    });
}