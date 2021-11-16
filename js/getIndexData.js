window.addEventListener('load', getNews);
document.getElementById('votesUl');

let data = null;

function getNews(){
    console.log("haetaan dataa")
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        showNews(data);
    }
    ajax.open("GET", "backend/getNews.php");
    ajax.send();
}

function showNews(news){

    console.log(news)

    const ul = document.getElementById("votesUl");
    ul.innerHTML = "";

    //---työmaa alue---//

    const liText = document.createTextNode(news.content);

}