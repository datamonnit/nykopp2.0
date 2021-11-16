//Rekisteröitymissivu

document.forms['register'].addEventListener('submit', createNewAdmin);

function createNewAdmin(event){

    
    
    const username = document.forms['register']['username'].value;
    const password = document.forms['register']['password'].value;
    const password2 = document.forms['register']['confirmPassword'].value;
    const mail = document.forms['register']['email'].value;

    if (username.length <= 0)  { 
        showMessage('error', 'username is required');
        return;
    }

    if (password.length <= 4) {
        showMessage('error', 'minimum is 4 characters');
        return;
    }

    if (password.localeCompare(password2) != 0){
        showMessage(data.error);
        return;
    }
    
    if (mail.length <= 0) {
        showMessage('error', 'email is required');
        return;
    }


    console.log('registering new user');

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText); 
        if (data.hasOwnProperty('success')){
            alert('tallennus onnistui!');
            window.location.href = "admin.php?type=success&msg=rekisteröityminen onnistui! voit kirjautua uusilla tunnuksilla!";
            return;
        } else {
            showMessage(data.error);
        }
    }
    ajax.open("POST", "backend/createNewAdmin.php", true);
    ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    ajax.send("username="+username+"&password="+password+"&mail="+mail);
}

function showMessage(msg){
    let msgBox = document.getElementById("msg");
    msgBox.querySelector('p').innerHTML = msg;
    msgBox.classList.remove('d-none');
}

