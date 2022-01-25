/* 

login.js

JS for handling login

*/
document.forms['login'].addEventListener('submit', loginAdmin);

function loginAdmin(event) {
    event.preventDefault();
    const username = document.forms['login']['username'].value;
    const password = document.forms['login']['pwd'].value;

    if (username.length <= 0){
        showMessage('error', 'username is required');
        return;
    }
    if (password.length <= 4) {
        showMessage('error','Minimum is 4 characters');
        return;
    }
let ajax = new XMLHttpRequest();
ajax.onload = function(){
    const data = JSON.parse(this.responseText); 
    console.log(data);
    if (data.hasOwnProperty('success')){
        window.location.href = "admin/?type=success&msg=welcome";
        return;
    } else {
        showMessage('error', 'kirjautuminen epäonnistui');
    }
}
ajax.open("POST", "backend/loggedIn.php", true);
ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
ajax.send(`username=${username}&password=${password}`);


}