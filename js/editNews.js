const newsQueryString = window.location.search;
const newsParams = new URLSearchParams(newsQueryString);

if (newsParams.has('id')){
    getNewsData(newsParams.get('id'));
}

document.forms['editNews'].addEventListener('submit', modifyNews);

function getNewsData(id){
    console.log(id);
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        console.log(data);
        populateNewsForm(data);
    }
    ajax.open("GET", "../backend/getOneNews.php?id=" + id);
    ajax.send();

}

function populateNewsForm(data){
    document.forms['editNews']['id'].value = data.post_id;
    document.forms['editNews']['topic'].value = data.post_title;
    document.forms['editNews']['content'].value = data.post_topic;
    document.forms['editNews']['date'].value = data.post_date.replace(" ","T");
    document.forms['editNews']['expdate'].value = data.expdate.replace(" ","T");

    const target = document.querySelector('fieldset');
}

function modifyNews(event){
    event.preventDefault();
    console.log('save change');

    // kerää tiedot
    let newsData = {};
    newsData.id = document.forms['editNews']['id'].value;
    newsData.topic = document.forms['editNews']['topic'].value;
    newsData.content = document.forms['editNews']['content'].value;
    newsData.date = document.forms['editNews']['date'].value;
    newsData.expdate = document.forms['editNews']['expdate'].value;
    
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        let data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')){
            window.location.href = "admin.php?type=successmsg=News edited"
        } else {
            // showMessage('error', data.error);
        }
    }  
    ajax.open("POST", "../backend/editNews.php", true);
    ajax.setRequestHeader("Content-Type", "application/json");
    ajax.send(JSON.stringify(newsData));

}