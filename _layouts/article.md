<!DOCTYPE html>
<html lang="en">
<head>
	{% include head.html %} 
</head>
<body>
<div class="page-wrapper">
<ul class="skip-links">
	<li><a href="#articles">Jump to Articles</a></li>
</ul>
<header id="header" class="header">
	{% include header.html %} 
</header>
<main>
	<section class="" id="">
	<h2>{{ page.title }}</h2>
    <p>{{ page.date }} | Categories: {{ page.categories }}</p>
	{{ content }}
	</section>
</main>
<footer>
	<p>
		&copy; 2026 Emmet Paradis. All rights reserved. 
	</p>
	<span class=""><a href="{{ site.data.sitewide.linkedin }}" target="_blank">LinkedIn</a></span> <span class=""><a href="{{ site.data.sitewide.muckrack }}" target="_blank">Muck Rack</a></span> <span class=""><a href="{{ site.data.sitewide.instagram }}" target="_blank">Instagram</a></span> 
</footer>
</div>
</body>
</html>
