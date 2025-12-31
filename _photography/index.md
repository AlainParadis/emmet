---
layout: default
title: Photography
---

<h1>{{ page.title }}</h1>

<div class="photography-grid">
  {% for post in site.photography %}
    {% if post.path != 'index.md' and post.gallery %}
    <div class="photo-item">
      <a href="{{ post.url | relative_url }}">
        <img src="{{ post.gallery[0].image }}" alt="{{ post.title }}">
        <h3>{{ post.title }}</h3>
      </a>
    </div>
    {% endif %}
  {% endfor %}
</div>