//Rekister√∂itymissivu

document.forms['register'].addEventListener('submit', createNewAdmin);

function createNewAdmin(event){

    
    

    const username = document.forms['register']['username'].value;
    const password = document.forms['register']['pwd'].value;
    const password2 = document.forms['register']['confirmPassword'].value;
    const email = document.forms['register']['email'].value;

    if (username.length <= 0)  { 
        showMessage('error', 'username is required');
        return;
    } 
    if (password.length <= 4) {
        showMessage('error', 'minimum is 4 characters');
        return;
    }

    if (password.localeCompare(password2) != 0){
        showMessage('error', 'password not matching!');
        return;
    }
    
    if (email.length <= 0) {
        showMessage('error', 'email is required');
        return;
    }

    event.preventDefault();
    

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText); 
        console.log(data);
        if (data.hasOwnProperty('success')){
            window.location.href = "index.php?type=success&msg=rekister√∂ityminen onnistui! voit kirjautua uusilla tunnuksilla!";
            return;
        } else {
            showMessage('error', data.error);
        }
    }
    ajax.open("POST", "backend/createNewAdmin.php", true);
    ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    ajax.send("username="+username+"&password="+password+"&email="+email);

    
}



