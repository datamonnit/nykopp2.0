//Rekisteröitymissivu

document.forms['register'].addEventListener('submit', loginAdmin);

function loginAdmin(event){

    

    const username = document.forms['register']['username'].value;
    const password = document.forms['register']['password'].value;
    const password2 = document.forms['register']['confirmPassword'].value;
   
    if (username.length <= 0)  { 
    alert('error', 'username is required');
    return;
}

if (password.length <= 4) {
    alert('error', 'minimum is 4 characters');
    return;
}

if (password.localeCompare(password2) != 0 ){
    alert('error','Password not matching!');
    return;
}

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
    const data = JSON.parse(this.responseText); 
    if (data.hasOwnProperty('success')){
    window.location.href = "admin.php?type=success&msg=rekisteröityminen onnistui! voit kirjautua uusilla tunnuksilla!";
    return;
   } else {
        alert('error' ,data.error);
    }
    ajax.open("POST", "backend/createNewAdmin.php", true);
    ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    ajax.send("username="+username+"&password="+password);
}


        }



