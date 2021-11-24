//Salasanan resetointi javascript

window.addEventListener('load', getAdmins);

function getAdmins(){ 
 console.log('haetaan data');
 let ajax = new XMLHttpRequest();
 ajax.onload = function(){
     const data = JSON.parse(this.responseText);
     showAdmins(data);
 }
 ajax.open("GET", "../admin/manageAdmin.php");
 ajax.send();
}
  function showAdmins(data){

    const ul = document.getElementById("adminUl");

      data.forEach(users => {
        const newLi = document.createElement('li');
        newLi.classList.add('list-group-item');

        const liText = document.createTextNode(users.username);
        newLi.appendChild(liText);

        ul.appendChild(newLi);

        /*
        <li class="list-group-item">
            käyttäjänimi
        </li>
        */


      });
  }