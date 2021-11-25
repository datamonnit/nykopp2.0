// contact.js

// const nimi = document.querySelector('.name');
// const sposti = document.querySelector('.email');
// const puh = document.querySelector('.number');
// const palaute = document.querySelector('.feedback');

document.forms['palaute'].addEventListener('submit', annaPalaute);

function annaPalaute(event) {
    event.preventDefault();

    const name = document.forms['palaute']['name'].value;
    const email = document.forms['palaute']['email'].value;
    const number = document.forms['palaute']['number'].value;
    const feedback = document.forms['palaute']['feedback'].value;

    // console.log(nimi.value, sposti.value, puh.value, palaute.value);

    if (name.length <= 0 || email.length <= 0 || number.length <= 0 || feedback.length <= 0){
        showMessage('error', 'Fill all fields!');
        return; 
    }

    let postData = `name=${name}&email=${email}&number=${number}&feedback=${feedback}`;

    // console.log(nimi, sposti, puh, palaute);
    // console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "contact.php?type=success&msg=Feedback sent!";
        } else {
            showMessage('error', data.error);
        }
    }
    ajax.open("POST", "backend/email.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    ajax.send(postData);
}
