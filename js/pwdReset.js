
//Salasanan resetointi javascript

document.forms['submit_email'].addEventListener('submit', pwdResetOption);

function pwdResetOption(event) {
    const pwdReset = document.forms['submit_email']['pwdReset'].value;
    const pwdResetEmail = document.forms['submit_email']['pwdResetEmail'].value;
    const  pwdResetToken = document.forms['submit_email']['pwdResetToken'].value;
    const pwdResetExpires = document.forms['submit_email']['pwdResetExpires'].value;
    


    
}