//Salasanan resetointi javascript
document.forms['login'].addEventListener('login', showAdmins);


function showAdmins(event){
 event.preventDefault();
 const id = document.forms['manageAccounts']['id'].value;
 const username = document.forms['manageAccounts']['username'].value;
 const email = document.forms['manageAccounts']['email'].value;
 
 if (id === undefined) {
     showMessage('error', 'id is required');
 }

if (username.length <= 0)  {
    showMessage('error', 'username is required');
}
if (email.length <= 0) {
    showMessage('error', 'email is required');
}


let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText); 
        console.log('haetaan data');
        if (data.hasOwnProperty('success')){
            window.location.href = "index.php?type=success&msg=";
            return;
        } else {
            showMessage('error', 'kirjautuminen epäonnistui');
        }

    }
    ajax.open("GET", "backend/showAdmin.php", true);
    ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlendcoded');
    ajax.send(postData);
    
}
  