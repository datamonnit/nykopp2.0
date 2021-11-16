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

    const ul = document.getElementById("newsUl");
    ul.innerHTML = "";

    news.forEach(oneNews => {
        if (oneNews.post_title.length <= 0) {
            return;
        }
        // Luodaan li-elementti
        const li = document.createElement('li');
        // Luodaan li:n sisältö -> tieto kannasta
        // const liText =  document.createTextNode(oneNews.post_title);
        
        // Lisätään uudet elementit DOMiin
        // li.appendChild(liText)    
        // li.innerHTML = oneNews.post_content
        ul.appendChild(li);

    });



    

}