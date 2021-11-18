// contact.js

// const nimi = document.querySelector('.name');
// const sposti = document.querySelector('.email');
// const puh = document.querySelector('.number');
// const palaute = document.querySelector('.feedback');

document.forms['palaute'].addEventListener('submit', annaPalaute);

function annaPalaute(event) {
    event.preventDefault();
    // console.log(nimi.value, sposti.value, puh.value, palaute.value);

    const nimi = document.forms['palaute']['name'].value;
    const sposti = document.forms['palaute']['email'].value;
    const puh = document.forms['palaute']['number'].value;
    const palaute = document.forms['palaute']['feedback'].value;

    if (nimi.length <= 0 || sposti.length <= 0 || puh.length <= 0 || palaute.length <= 0){
        showMessage('error', 'Fill all fields!');
        return; 
    }

    let postData = `nimi=${nimi}&sähköposti=${sposti}&puhelinnumero=${puh}&palaute=${palaute}`;

    // console.log(nimi, sposti, puh, palaute);
    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "index.php?type=success&msg=Feedback sent!";
        } else {
            showMessage('error', data.error);
        }
    }
    ajax.open("POST", "backend/email.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajax.send(postData);
}

