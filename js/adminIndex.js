window.addEventListener('load', getNews);
const newsUl = document.getElementById('newsUl');
newsUl.addEventListener('click', newsClick);


let data = null;

function getNews(){
    console.log("haetaan dataa")
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        showNews(data);
    }

    let backendPath = ""
    if (window.location.href.indexOf('admin') > 0){
        backendPath = "../backend/getNews.php"
    } else {
        backendPath = "backend/getNews.php"
    }

    ajax.open("GET", backendPath);
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
        li.id = oneNews.post_id;
        li.classList.add('list-group-item');

        // LI-elementtiin uutisen otsikko
        const title = document.createElement('h3');
        const titleText =  document.createTextNode(oneNews.post_title);
        title.appendChild(titleText)   
        li.appendChild(title)
        
        // Button Group
        // <div class="btn-group" role="group" aria-label="Basic example">
        const btnGroup = document.createElement('div');
        btnGroup.classList.add('btn-group');
        btnGroup.setAttribute('role','group');

        // Edit-button
        const btnEdit = document.createElement('button');
        btnEdit.classList.add('btn')
        btnEdit.classList.add('btn-primary')
        const btnEditText = document.createTextNode("Edit");
        btnEdit.appendChild(btnEditText);
        btnEdit.dataset.action= 'edit';
        btnGroup.appendChild(btnEdit);    

        // Delete-button
        const btnDelete = document.createElement('button');
        btnDelete.classList.add('btn')
        btnDelete.classList.add('btn-danger')
        const btnDeleteText = document.createTextNode("Delete");
        btnDelete.appendChild(btnDeleteText);
        btnDelete.dataset.action = 'delete';
        btnGroup.appendChild(btnDelete); 
        
        li.appendChild(btnGroup);

        ul.appendChild(li);

    });

}

function newsClick(event){
    console.log(event.target)
    const id = event.target.parentElement.parentElement.id

    if (event.target.dataset.action == 'edit'){
        console.log(`edit ${id}`)
        window.location.href = "admin/editnews.php" + id;
        
    }

    if (event.target.dataset.action == 'delete'){
        console.log(`delete ${id}`)
        // Suorittaa deleteNews.php
        // 
        btnEdit.onclick = deleteNews();

    }
}

function deleteNews(id){
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        data = JSON.parse(this.responseText);
        console.log(data);
        let liToDelete = document.querySelector(`[data-newsid="${id}"]`)
        let parent = liToDelete.parentElement;
        parent.removeChild(liToDelete);
    }
    ajax.open("GET", "backend/deleteNews.php?id=" + id);
    ajax.send();
}
