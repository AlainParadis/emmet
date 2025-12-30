---
layout: default
title: Home
--- 
<ul class="skip-links">
	<li><a href="#articles">Jump to Articles</a></li>
</ul>
<header id="header" class="header">
	<div class="wrapper">
		{% include header.html %} 
	</div>
</header>
<main>
	<section class="siteintro" id="siteintro">
		<div class="wrapper">
			<h2>
				{{ site.data.sitewide.intro-heading }} 
			</h2>
			<p>
				{{ site.data.sitewide.intro-content }} 
			</p>
		</div>
	</section>
	<section class="about" id="about">
		<div class="wrapper">
			<h2>
				About Me 
			</h2>
			<p>
				{{ site.data.sitewide.about-me }} 
			</p>
		</div>
	</section>
	<section id="findme" class="findme">
		<div class="wrapper">
			<span class=""><a href="{{ site.data.sitewide.linkedin }}" target="_blank">LinkedIn</a></span> <span class=""><a href="{{ site.data.sitewide.muckrack }}" target="_blank">Muck Rack</a></span> <span class=""><a href="{{ site.data.sitewide.instagram }}" target="_blank">Instagram</a></span> 
		</div>
	</section>
	{% assign public_articles = site.articles | where_exp: "article", "article.draft == false" %} 
	<section class="articles" id="articles">
		<div class="wrapper">
			{% include cards-articles.html articles=public_articles sortby="date" limit=4 %} 
		</div>
	</section>
</main>
<footer>
	<div class="wrapper">
		{% include footer.html %} 
	</div>
</footer>
