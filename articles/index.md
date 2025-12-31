---
layout: default
title: My Articles
---
{% assign public_articles = site.articles | where_exp: "article", "article.draft == false" %} 
<section class="articles" id="articles">
	<div class="wrapper">
		<p>
			These are all the articles I've written. 
		</p>
		<div class="cards-wrapper">
			{% include cards-articles.html articles=public_articles sortby="date" %} 
		</div>
	</div>
</section>
