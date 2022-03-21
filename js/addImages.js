document.forms['addimages'].addEventListener('submit', addImages);

function addImages(event){
    event.preventDefault();
    console.log('save new image');

    const id = document.forms['addimages']['id'].value;
    const name = document.forms['addimages']['name'].value;
    const dzi_file = document.forms['addimages']['dzi_file'].value;
    const category = document.forms['addimages']['category'].value;
    const size = document.forms['addimages']['size'].value;
    const technic = document.forms['addimages']['technic'].value;
    const year = document.forms['addimages']['year'].value;
}