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
	<div class="wrapper">
		<article class="" id="">
			<h2>
				{{ page.title }} 
			</h2>
			<div>
				{{ page.date }} | Categories: {{ page.categories }} 
			</div>
			<div>
				{{ page.excerpt | markdownify | image_baseurl }} 
			</div>
			{{ content | image_baseurl }} 
		</article>
	</div>
</main>
<footer>
	<div class="wrapper">
        {% include footer.html %}
	</div>
</footer>
</body>
</html>
