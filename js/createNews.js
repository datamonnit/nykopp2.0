
document.forms['createnews'].addEventListener('submit', createNews);

function createNews(event){
    event.preventDefault();
    console.log('save new poem');

    const title = document.forms['createnews']['post_title'].value;
    const content = document.forms['createnews']['post_content'].value;
    const date = document.forms['createnews']['post_date'].value;
    const expdate = document.forms['createnews']['expdate'].value;

    let postData = `post_title=${title}&post_content=${content}&post_date=${date}&expdate=${expdate}`;

    console.log(postData);

    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        const data = JSON.parse(this.responseText);
        if (data.hasOwnProperty('success')) {
            window.location.href = "../index.php?type=success&mag=Uutinen lisätty!"
        } else {
            // showMessage('error',data.error);
            die();
        }
    }

    ajax.open("POST", "../backend/createnews.php", true);
    ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");  
    ajax.send(postData);

}