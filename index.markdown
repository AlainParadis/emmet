---
layout: default
title: Home
--- 

<section class="hero">
	<h1>{{ site.data.sitewide.sitetitle }}</h1>
	<p>Reporter, editor, student.</p>
	<div class="hero-social">
		<a href="{{ site.data.sitewide.linkedin }}" target="_blank" rel="noopener" title="LinkedIn">in</a>
		<a href="{{ site.data.sitewide.instagram }}" target="_blank" rel="noopener" title="Instagram">📷</a>
	</div>
</section>

<section class="intro">
	<h2>{{ site.data.sitewide.intro-heading }}</h2>
	<p>{{ site.data.sitewide.intro-content }}</p>
</section>

{% assign public_articles = site.articles | where_exp: "article", "article.draft == false" %}
<section class="articles" id="articles">
	<h2>Latest Articles</h2>
	<div class="cards-wrapper">
		{% include cards-articles.html articles=public_articles limit=8 %}
	</div>
	<p class="text-right">
		<a href="{{ site.baseurl }}/articles/">View all articles</a>
	</p>
</section>
