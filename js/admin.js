//Salasanan resetointi javascript

window.addEventListener('load', getAdmins);
document.getElementById('adminUl').addEventListener('click', openAdmin);


let data = null;



function getAdmins(data){
 console.log('haetaan data');
 let ajax = new XMLHttpRequest();
 ajax.onload = function(){
     const data = JSON.parse(this.responseText);
     showAdmins(data);
 }
 ajax.open("GET", "../backend/showAdmin.php");
 ajax.send();
}
  function showAdmins(data){
    const ul = document.getElementById("adminUl");
    ul.innerHTML = "";

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


function createAdminLi(targetUl, userId, adminId) {

  const newLi = document.createElement('li');
  newLi.classList.add('list-group-item');
  newLi.dataset.adminId = userId;

  const newDeleteBtn = document.createElement('button');
  newDeleteBtn.dataset.action = 'delete';
  const deleteText = document.createTextNode('Delete Admin');
  newDeleteBtn.appendChild(deleteText);


  const liText = document.createTextNode(adminId);
  newLi.appendChild(liText);

  newLi.appendChild(newDeleteBtn);

  targetUl.appendChild(newLi);
}

 
function openAdmin(event) {
console.log(event.target.dataset);  
const action = event.target.dataset.action;


if (action == 'delete') {
  let userId = event.target.parentElement.dataset.userId;
  deleteAdmin(userId);
  return;
}


window.location.href = "../admin/manageAdmin.php?id=" + event.target.dataset.userId;
}

function newDeleteBtn(id){
  let ajax = new XMLHttpRequest();
  ajax.onload = function(){
    data = JSON.parse(ajax.responseText);
    console.log(data);
    let LiToDelete = document.querySelector(`[data-userid="${id}"]`);
    let parent = LiToDelete.parentElement;
    parent.removeChild(LiToDelete);
  }
  ajax.open("GET", "../backend/deleteAdmin.php?id=" + id);
  ajax.send();
}
  
function deleteAdmin(id){
  alert('Delete' + id);
}