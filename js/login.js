document.forms['login'].addEventListener('submit', loginUser);

function loginUser(event) {
    event.preventDefault();
    const username = document.forms['username'].value;
    const password = document.forms['password'].value;

    if (username.length <= 0){
        showMessage('error', 'username is required');
        return;
    }
if (password.length <= 4){
    showMessage('error', 'minimum is 4 characters');
    return;
}

let ajax = new XMLHttpRequest();
ajax.onload = function(){
    const data = JSON.parse(this.responseText); 
    console.log(data);
    if (data.hasOwnProperty('success')){
        window.location.href = "index.php?type=success&msg=welcome";
        return;
    } else {
        showMessage('error', 'kirjautuminen epäonnistui');
    }
}
ajax.open("POST", "backend/loginAdmin.php", true);
ajax.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
ajax.send(`username=${username}&password=${password}`);


}