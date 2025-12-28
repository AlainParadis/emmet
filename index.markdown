---
layout: default
title: Emmet Paradis' Portfolio
heading: "Page Heading"
intro: "This is the goal of the web site."
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
			{{ page.heading }}
		</h2>
		<p>
			{{ page.intro }}
		</p>
	</section>
	<section class="about" id="about">
		<h2>
			About Me
		</h2>
		<p>
			{{ site.data.about-me }}
		</p>
	</section>
	<section class="articles" id="articles">
		<h2>
			I've written for
		</h2>
		<article>
			<h3>
				Article One
			</h3>
			<p>
				Deck for article one.
			</p>
		</article>
		<article>
			<h3>
				Article Two
			</h3>
			<p>
				Deck for article two.
			</p>
		</article>
	</section>
</main>
<footer>
	<p>
		&copy; 2026 Emmet Paradis. All rights reserved.
	</p>
</footer>
