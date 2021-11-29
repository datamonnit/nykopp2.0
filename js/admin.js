//Salasanan resetointi javascript

window.addEventListener('load', getAdmins);
document.getElementById('adminUl').addEventListener('click', openAdmin);


let data = null;



function getAdmins(){
 console.log('haetaan data');
 let ajax = new XMLHttpRequest();
 ajax.onload = function(){
     const data = JSON.parse(this.responseText);
     showAdmins(data);
 }
 ajax.open("GET", "../backend/showAdmin.php?show_all=1");
 ajax.send();
}
  
function showAdmins(){
  
  const ul = document.getElementById("adminUl");
  ul.innerHTML = "";

  data.forEach(users => {

    createAdminLi(targetUl, userid, adminId);
    
  

    
    
    
    
    
  
    });
  


function createAdminLi(targetUl, userid, adminId){
  const newLi = document.createElement('li');
  newLi.classList.add('list-group-item');
  newLi.dataset.adminId = userid;

  const newDeleteBtn = document.createElement('button');
  newDeleteBtn.dataset.action = 'delete';
  const deleteText = document.createTextNode('Delete Admin');
  newDeleteBtn.appendChild(deleteText);


  const liText = document.createTextNode(adminId);
  newLi.appendChild(liText);

  newLi.appendChild(newDeleteBtn);

  targetUl.appendChild(newLi);
}

}
function openAdmin(event) {
  console.log(event.target.dataset);  
  const action = event.target.dataset.action;
  const userid = event;
  if (action == 'delete') {
    let userid = event.target.parentElement.dataset.userid;
    DeleteAdmin(userid);
    return;
  }

  // window.location.href = "../admin/manageAdmin.php?id=" + event.target.dataset.userId;
}

function DeleteAdmin(id){
  let ajax = new XMLHttpRequest();
  ajax.onload = function(){
    data = JSON.parse(ajax.responseText);
    console.log(data);
    let LiToDelete = document.querySelector(`[data-userid="${id}"]`);
    let parent = LiToDelete.parentElement;
    parent.removeChild(LiToDelete);
  }
  ajax.open("GET", "backend/deleteAdmin.php?id=" + id);
  ajax.send();
}
  
