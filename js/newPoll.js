let optionCount = 1;

document.forms['newPoll'].addEventListener('submit', createNewPoll);

function createNewPoll(event){
    event.preventDefault();
    console.log('save new poll');

    const otsikko = document.forms['newPoll']['otsikko'].value;
    const options = [];
    const inputs = document.querySelectorAll('input');

    inputs.forEach(function(input){
        if (input.name.indexOf('option') == 0){
            options.push(input.value);
        }
    })
    // Tarkastetaan että aihe ja kaksi optionia on annettu.
    if (otsikko.length <= 0 || options[0].length <= 0){
        showMessage('error','"Otsikko tai Runo puuttuu"');
        return;
    }

    let postData = `otsikko=${otsikko}&start=${start}&end=${stop}`;
    let i = 0;
    options.forEach(function(option){
        postData += `&option${i++}=${option}`
    })

    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "index.php?type=succes&msg=New poll inserted!";
        } else {
            showMessage('error',data.error);
        }
    }
    ajax.open("POST", "backend/CreateNewPoll.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  
    ajax.send(postData);
}