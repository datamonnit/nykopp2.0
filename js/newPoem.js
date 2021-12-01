let optionCount = 2;

document.getElementById('addOption').addEventListener('click', addNewOption);
document.getElementById('deleteLastOption').addEventListener('click', deleteLastOption);
document.forms['newPoem'].addEventListener('submit', createNewPoem);

function createNewPoem(event){
    event.preventDefault();
    console.log('save new poem');

    const poem_id = document.forms['newPoem']['poem_id'].value;
    const poem_title = document.forms['newPoem']['poem_title'].value;
    const poem_file = document.forms['newPoem']['poem_file'].value;

    const options = [];

    const inputs = document.querySelectorAll('input');

    inputs.forEach(function(input){
        if (input.name.indexOf('option') == 0){
            options.push(input.value);
        }
    })
    // Tarkastetaan että aihe ja kaksi optionia on annettu
    if (topic.length <= 0 || options[0].length <= 0 || options[1].length <= 0){
        showMessage('error','"Topic and at least two options must be set!"');
        return;
    }

    let postData = `poem_id=${poem_id}&poem_title=${poem_title}&poem_file=${poem_file}`;
    let i = 0;
    options.forEach(function(option){
        postData += `&option${i++}=${option}`
    })

    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "index.php?type=success&mag=New poem inserted!"
        } else {
            showMessage('error',data.error);
        }
    }
    ajax.open("POST", "backend/createNewPoem.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  
    ajax.send(postData);
}

function deleteLastOption(event){

    event.preventDefault();

    if (optionCount <= 2 ) {
        return;
    }

    const optionToDelete = document.querySelector('fieldset').lastElementChild;
    const parentElement = document.querySelector('fieldset');
    parentElement.removeChild(optionToDelete);

    optionCount--;

}

function addNewOption(event){

    event.preventDefault();

    optionCount++;

    // crete new div
    const div = document.createElement('div');
    div.classList.add('form-group');

    // create new label
    const label = document.createElement('label');
    const forAttribute = document.createAttribute('for');
    const labelText = document.createTextNode(`Option${optionCount}`);
    forAttribute.value = `Option${optionCount}`;
    label.setAttributeNode(forAttribute);
    label.appendChild(labelText);
    label.classList.add('form-label');
    label.classList.add('mt-4');

    // create new input
    const input = document.createElement('input');

    input.classList.add('form-control');

    const inputType = document.createAttribute('type');
    inputType.value = "text";
    input.setAttributeNode(inputType);

    const inputName = document.createAttribute('name');
    inputName.value = `option${optionCount}`;
    input.setAttributeNode(inputName);

    const inputPlaceHolder = document.createAttribute('placeholder');
    inputPlaceHolder.value = `Option${optionCount}`;
    input.setAttributeNode(inputPlaceHolder);
    
    div.appendChild(label);
    div.appendChild(input);

    document.querySelector('fieldset').appendChild(div);
    console.log(div);

}