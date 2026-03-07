<!DOCTYPE html>
<html lang="en">
<head>
	{% include head.html %} 
</head>
<body>
<ul class="skip-links">
	<li><a href="#main">Jump to Main Content</a></li>
</ul>
<button class="hamburger" id="hamburger" aria-label="Toggle navigation menu" aria-expanded="false">
	<span></span>
	<span></span>
	<span></span>
</button>
<div class="nav-overlay" id="navOverlay"></div>
{% include header.html %}
<main id="main">
{{ content }}
</main>
<footer>
	{% include footer.html %}
</footer>
<script>
	const hamburger = document.getElementById('hamburger');
	const nav = document.querySelector('nav.sidebar');
	const overlay = document.getElementById('navOverlay');
	const navLinks = document.querySelectorAll('nav.sidebar a');

	hamburger.addEventListener('click', () => {
		const isOpen = hamburger.classList.toggle('open');
		nav.classList.toggle('open');
		overlay.classList.toggle('open');
		hamburger.setAttribute('aria-expanded', isOpen);
	});

	overlay.addEventListener('click', () => {
		hamburger.classList.remove('open');
		nav.classList.remove('open');
		overlay.classList.remove('open');
		hamburger.setAttribute('aria-expanded', false);
	});

	navLinks.forEach(link => {
		link.addEventListener('click', () => {
			hamburger.classList.remove('open');
			nav.classList.remove('open');
			overlay.classList.remove('open');
			hamburger.setAttribute('aria-expanded', false);
		});
	});
</script>
</body>
</html>
