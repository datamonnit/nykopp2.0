document.forms['register'].addEventListener('submit', registerNewUser);

function registerNewUser(event){
    event.preventDefault();
    const username = document.forms['register']['username'].value;
    const email = document.forms['register']['email'].value;
    const password = document.forms['register']['password'].value;

    if (username.length <= 0)  { 
    showMessage('error', 'username is required');
    return;
}

if (password.length <= 4) {
    showMessage('error', 'minimum is 4 characters');
    return;
}

if (email.length <= 0) {
    showMessage('error', 'email is required');
    return;
}
    }
let ajax = new XMLHttpRequest();
ajax.onload = function(){
    const data = JSON.parse(this.responseText); 
    console.log(data);
    if (data.hasOwnProperty('success')){
        window.location.href = "index.php?type=success&msg=wellcome";
        return;
    } else {
        showMessage('error', 'kirjautuminen epäonnistui');
    }
    ajax.open("POST", "backend/registerNewUser.php", true);
    ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    ajax.send("username="+username+"&password="+password);
}