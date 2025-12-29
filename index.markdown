---
layout: default
title: Emmet Paradis' Portfolio
---
<ul class="skip-links">
	<li><a href="#articles">Jump to Articles</a></li>
</ul>
<header>
	<h1>
		{{ page.title }} 
	</h1>
	<nav>
		{% include nav.html %} 
	</nav>
</header>
<main>
	<section id="home">
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
	<section class="articles" id="articles">
		<h2>
			These are my articles:
		</h2>
		<article>
            {% include cards-articles.html sortby="date" limit=6 %}
		</article>
	</section>
</main>
<footer>
	<p>
		&copy; 2026 Emmet Paradis. All rights reserved. 
	</p>
	<span class=""><a href="{{ site.data.sitewide.linkedin }}" target="_blank">LinkedIn</a></span>
	<span class=""><a href="{{ site.data.sitewide.muckrack }}" target="_blank">Muck Rack</a></span>
	<span class=""><a href="{{ site.data.sitewide.instagram }}" target="_blank">Instagram</a></span> 
</footer>
