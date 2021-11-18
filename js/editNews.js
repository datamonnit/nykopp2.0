function modifyNews(event){
    event.preventDefault();
    console.log('save change');

    // kerää datan
    let newsData = {};
    newsData.id = document.forms['editNews']['id'].value;
    newsData.topic = document.forms['editNews']['topic'].value;
    newsData.content = document.forms['editNews']['content'].value;
    newsData.date = document.forms['editNews']['date'].value;
    newsData.expdate = document.forms['editNews']['expdate'].value;

}
