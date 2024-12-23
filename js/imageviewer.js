window.addEventListener('DOMContentLoaded', main);

function main () {
    let figures = document.getElementsByTagName("figure");
    [...figures].forEach(function (e) {
        let img = e.getElementsByTagName('img');
        if (img) {
            img[0].addEventListener('click', openImage);
        }
    });
}

function openImage (e) {
    const viewer = new Viewer(e.target);
    viewer.show();
}
