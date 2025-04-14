window.addEventListener("load", function () {
	let clicked = false;
	var dropdown_clicked = document.querySelectorAll('.dropdown .dropdown-clicked');

	dropdown_clicked.forEach(element => {
		element.addEventListener('click', function () {
			element.parentElement.children[1].classList.toggle('dropdown-active');
		});
	});
	
	document.getElementById("contact").addEventListener("click", function () {
		if (!clicked) {
			document.getElementById("contactForm").style.display = "Flex";
			document.body.style.overflow = "Hidden";
			clicked = true;
		} else {
			document.getElementById("contactForm").style.display = "None";
			document.body.style.overflow = "Auto";
			clicked = false;
		}
	});

	window.addEventListener("click", function (e) {
		if (clicked) {
			if (document.getElementById("contactForm").contains(e.target) && !document.querySelectorAll('.contact-form')[0].contains(e.target)) {
				document.getElementById("contactForm").style.display = "None";
				document.body.style.overflow = "Auto";
				clicked = false;
			}
		}
	});

	document.getElementById("openMenu").addEventListener("click", function () {
		document.getElementById("menuZone").style.display = "Block";
	});

	document.getElementById("closeMenu").addEventListener("click", function () {
		document.getElementById("menuZone").style.display = "None";
	});
});

