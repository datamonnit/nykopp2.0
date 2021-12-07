//Salasanan resetointi javascript

window.addEventListener('load', getAdmins);
document.getElementById('adminUl').addEventListener('click', openAdmin);

function getAdmins(){
 console.log('haetaan data');
 let ajax = new XMLHttpRequest();
 ajax.onload = function(){
     const data = JSON.parse(this.responseText);
     showAdmins(data);
 }
 ajax.open("GET", "../backend/getAdmins.php");
 ajax.send();
}
  
function showAdmins(data){

  const ul = document.getElementById("adminUl"); 

  data.forEach(user => {
    createAdminLi(ul, user.id, user.username)
  });
  
  }

function createAdminLi(targetUl, userId, userName){

  const newLi = document.createElement('li');
  newLi.classList.add('list-group-item');
  newLi.dataset.userId = userId;

  const newDeleteBtn = document.createElement('button');
  newDeleteBtn.classList.add('btn');
  newDeleteBtn.classList.add('btn-danger');
  newDeleteBtn.classList.add('float-right');
  newDeleteBtn.dataset.action = 'delete';
  const deleteText = document.createTextNode('delete admin');
  newDeleteBtn.appendChild(deleteText);

  const liText = document.createTextNode(userName);
  newLi.appendChild(liText);

  newLi.appendChild(newDeleteBtn);

  targetUl.appendChild(newLi);
}


function openAdmin(event) {

  console.log(event.target.dataset);  
  const action = event.target.dataset.action;
  if (action == 'delete') {
    let userId = event.target.parentElement.dataset.userId;
    DeleteAdmin(userId);
    return;
  }

   window.location.href = "../admin/manageAdmin.php?id=" + event.target.dataset.userId;
}

function DeleteAdmin(id){
  let ajax = new XMLHttpRequest();
  ajax.onload = function(){
    data = JSON.parse(ajax.responseText);
    console.log(data);
    let LiToDelete = document.querySelector(`[data-user-id="${id}"]`);
    let parent = LiToDelete.parentElement;
    parent.removeChild(LiToDelete);
  }
  ajax.open("GET", "../backend/deleteAdmin.php?id=" + id);
  ajax.send();
}

