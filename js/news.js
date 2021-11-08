
document.forms['newNews'].addEventListener('submit', createNewNews);

function createNewNews(event){
    event.preventDefault();
    console.log('save new poll');

    const title = document.forms['newNews']['title'].value;
    const content = document.forms['newNews']['content'].value;
    const start = document.forms['newNews']['start'].value;
    const stop = document.forms['newNews']['end'].value;

    const inputs = document.querySelectorAll('input');

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "index.php?type=success&mag=Uutinen lisätty!"
        } else {
            showMessage('error',data.error);
        }
    }

    ajax.open("POST", "backend/createNewNews.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  
    ajax.send(postData);

}
