{%- assign articles = site.articles -%}

{%- if include.where_field and include.where_value -%}
  {%- assign articles = articles | where: include.where_field, include.where_value -%}
{%- endif -%}

{%- if include.sort_by -%}
  {%- assign articles = articles | sort: include.sort_by -%}
{%- endif -%}

{%- if include.limit -%}
  {%- assign articles = articles | slice: 0, include.limit -%}
{%- endif -%}

<div class="articles-cards">
  {%- for article in articles -%}
    <article class="article-card">
      <h2>
        <a href="{{ article.url | relative_url }}">
          {{ article.title }}
        </a>
      </h2>
      {% if article.date %}
        <p class="article-meta">
          {{ article.date | date: "%B %-d, %Y" }}
        </p>
      {% endif %}
      {% if article.excerpt %}
        <p class="article-excerpt">{{ article.excerpt }}</p>
      {% endif %}
    </article>
  {%- endfor -%}
</div>
