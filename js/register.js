//Rekisteröitymissivu

document.forms['register'].addEventListener('submit', registerNewUser);

function registerNewUser(event){

    event.preventDefault();

    const username = document.forms['register']['username'].value;
    const password = document.forms['register']['password'].value;
    const email = document.forms['register']['password2'].value;
   
    if (username.length <= 0)  { 
    showMessage('error', 'username is required');
    return;
}

if (password.length <= 4) {
    showMessage('error', 'minimum is 4 characters');
    return;
}
if (password.length <= 4) {
    showMessage('error', 'minimum is 4 characters');
    return;
}

    ajax.send();
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
    const data = JSON.parse(this.responseText); 
    if (data.hasOwnProperty('success')){
    window.location.href = "login.php?msg=rekisteröityminen onnistui! voit kirjautua uusilla tunnuksilla!";
    return;
    } else {
        showMessage('error' ,data.error);
    }
    ajax.open("POST", "backend/registerNewUser.php", true);
    ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    ajax.send("username="+username+"&password="+password);
}

