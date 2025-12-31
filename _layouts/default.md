<!DOCTYPE html>
<html lang="en">
<head>
	{% include head.html %} 
</head>
<body>
<ul class="skip-links">
	<li><a href="#articles">Jump to Articles</a></li>
</ul>
<header id="header" class="header">
	<div class="wrapper">
		{% include header.html %} 
	</div>
</header>
<main>
{{ content }}
</main>
<footer>
	<div class="wrapper">
		{% include footer.html %}
	</div>
</footer>
</body>
</html>
