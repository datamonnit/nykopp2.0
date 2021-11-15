window.addEventListener('load', getNews);

let data = null;

function getNews(){
    console.log("haetaan dataa")
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        showPolls(data);
    }
    ajax.open("GET", "backend/getNews.php?show_all=1");
    ajax.send();
}

function showNews(){

    const newLi = document.createElement('li');
    newLi.classList.add('list-group-item');
    newLi.dataset.news_id = news.id;

    const liText = document.createTextNode(news.topic);
    const liText = document.createTextNode(news.content);
    const liText = document.createTextNode(news.date);
    const liText = document.createTextNode(news.expdate);

}