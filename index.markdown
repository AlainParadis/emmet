---
layout: default
---
<ul class="skip-links">
	<li><a href="#articles">Jump to Articles</a></li>
</ul>
<header id="header" class="header">
	{% include header.html %} 
</header>
<main>
	<section class="siteintro" id="siteintro">
		<h2>
			{{ site.data.sitewide.intro-heading }} 
		</h2>
		<p>
			{{ site.data.sitewide.intro-content }} 
		</p>
	</section>
	<section class="about" id="about">
		<h2>
			About Me 
		</h2>
		<p>
			{{ site.data.sitewide.about-me }} 
		</p>
	</section>
	<section id="findme" class="findme">
		<h2>
			Find Me 
		</h2>
		<span class=""><a href="{{ site.data.sitewide.linkedin }}" target="_blank">LinkedIn</a></span> <span class=""><a href="{{ site.data.sitewide.muckrack }}" target="_blank">Muck Rack</a></span> <span class=""><a href="{{ site.data.sitewide.instagram }}" target="_blank">Instagram</a></span> 
	</section>
	{% assign public_articles = site.articles | where_exp: "article", "article.draft == false" %} 
	<section class="articles" id="articles">
		<div>
			{% include cards-articles.html articles=public_articles sortby="date" limit=4 %} 
		</div>
	</section>
</main>
<footer>
	{% include footer.html %} 
</footer>
