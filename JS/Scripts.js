window.addEventListener("load", function () {
	var dropdown_clicked = document.querySelectorAll('.dropdown .dropdown-clicked');
    var contactButton = document.querySelector(".contact");
	var contactFormContainer = document.querySelector('.contact-form-container');
	var contactForm = document.querySelector('.contact-form');
	var openMenu = document.querySelector(".open-menu");
	var menuZone = document.querySelector(".menu-zone");
	var closeMenu = document.querySelector(".close-menu");

	dropdown_clicked.forEach(element => {
		element.addEventListener('click', function () {
			element.parentElement.children[1].classList.toggle('dropdown-active');
		});
	});
	
	contactButton.addEventListener("click", function () {
	  contactFormContainer.classList.toggle("show-form");
	});

	window.addEventListener("click", function (e) {
	  if(contactFormContainer.contains(e.target) && !contactForm.contains(e.target)) {
	    contactFormContainer.classList.toggle("show-form");
	  }
	});

	openMenu.addEventListener("click", function () {
	  menuZone.style.display = "Block";
	});

	closeMenu.addEventListener("click", function () {
	  menuZone.style.display = "None";
	});
});

