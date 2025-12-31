---
layout: default
title: Home
--- 
<main>
	<section class="siteintro" id="siteintro">
		<div class="wrapper">
			<div>
				<h2>
					{{ site.data.sitewide.intro-heading }} 
				</h2>
				<p>
					{{ site.data.sitewide.intro-content }} 
				</p>
			</div>
			<div>
				<h2>
					About Me 
				</h2>
				<p>
					{{ site.data.sitewide.about-me }} 
				</p>
			</div>
		</div>
	</section>
	<section id="findme" class="findme">
		<div class="wrapper">
			<span class="findme"><a href="{{ site.data.sitewide.linkedin }}" target="_blank">LinkedIn</a></span> <span class="findme"><a href="{{ site.data.sitewide.muckrack }}" target="_blank">Muck Rack</a></span> <span class="findme"><a href="{{ site.data.sitewide.instagram }}" target="_blank">Instagram</a></span> 
		</div>
	</section>
	{% assign public_articles = site.articles | where_exp: "article", "article.draft == false" %} 
	<section class="articles" id="articles">
		<div class="wrapper">
			<div class="cards-wrapper">
				{% include cards-articles.html articles=public_articles sortby="date" limit=4 %} 
			</div>
			<p class="text-right">
				<a href="/articles/">More articles...</a> 
			</p>
		</div>
	</section>
</main>
