var photo = document.getElementById("picture");
photo.style.height = '200px';
photo.style.width = '200px';

function PictureClick(event) {
	event.target.style.height = '400px';
	event.target.style.width = '400px';

}
photo.addEventListener("click", PictureClick);