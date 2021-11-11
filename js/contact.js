// contact.js

const nimi = document.querySelector('.name');
const sposti = document.querySelector('.email');
const puh = document.querySelector('.number');
const palaute = document.querySelector('.feedback');

document.forms['palaute'].addEventListener('submit', annaPalaute);

function annaPalaute(event) {
    event.preventDefault();
    console.log(nimi.value, sposti.value, puh.value, palaute.value);
}

