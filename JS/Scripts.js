window.addEventListener("load", function () {
	var dropdown_clicked = document.querySelectorAll('.dropdown .dropdown-clicked');

	dropdown_clicked.forEach(element => {
		element.addEventListener('click', function () {
			element.parentElement.children[1].classList.toggle('dropdown-active');
		});
	});
});