---
layout: blog_cards
title: Posts
permalink: /index
---
<div class="cards-container">
  <!-- First row with two cards -->
  <div class="card-row">
    <!-- Left card: The most recent non-"fresh" post -->
    {% assign latest_post = nil %}
    {% for post in site.posts %}
      {% unless post.categories contains "fresh" %}
        {% assign latest_post = post %}
        {% break %}
      {% endunless %}
    {% endfor %}
    <a href="{{ latest_post.url }}" class="card">
      <div class="card-figure">
        <img src="{{ latest_post.image }}" alt="{{ latest_post.image-alt-text }}">
      </div>
      <div class="card-body">
        <h2 class="card-title">{{ latest_post.title }}</h2>
      </div>
    </a>
    <!-- Right card: The most recent "fresh" category post -->
    {% assign fresh_post = site.posts | where: "categories", "fresh" | first %}
    {% if fresh_post %}
    <a href="{{ fresh_post.url }}" class="card">
      <div class="card-figure">
        <img src="{{ fresh_post.image }}" alt="{{ fresh_post.image-alt-text }}">
        <!-- Pin icon overlay -->
        <div class="pin-icon">
          <img src="/assets/icons/pin-white.png" alt="Pinned Post">
        </div>
      </div>
      <div class="card-body">
        <h2 class="card-title">{{ fresh_post.title }}</h2>
      </div>
    </a>
    {% endif %}
  </div>

<!-- Second row with three cards -->
<div class="card-row">
  {% assign count = 0 %}
  {% for post in site.posts %}
    {% assign is_latest_post = false %}
    {% assign is_fresh_post = false %}

    {% if post.url == latest_post.url %}
      {% assign is_latest_post = true %}
    {% endif %}

    {% if fresh_post and post.url == fresh_post.url %}
      {% assign is_fresh_post = true %}
    {% endif %}

    {% if is_latest_post == false and is_fresh_post == false %}
      <a href="{{ post.url }}" class="card">
        <div class="card-figure">
          <img src="{{ post.image }}" alt="{{ post.image-alt-text }}">
        </div>
        <div class="card-body">
          <h2 class="card-title">{{ post.title }}</h2>
        </div>
      </a>
      {% assign count = count | plus: 1 %}
    {% endif %}

    {% if count == 3 %}
      {% break %}
    {% endif %}
  {% endfor %}
</div>

<!-- Ongoing width-spanning flexboxes -->
  {% for post in site.posts offset:5 limit:10 %}
    {% if fresh_post and post.url != fresh_post.url %}
      <a href="{{ post.url }}" class="flexbox-card">
        <div class="flexbox-figure">
          <img src="{{ post.image }}" alt="{{ post.image-alt-text }}">
        </div>
        <div class="flexbox-body">
          <h2 class="flexbox-title">{{ post.title }}</h2>
        </div>
      </a>
    {% endif %}
  {% endfor %}
</div>

<p>
  <div class="center-text">
    <a href="/page_two">Older Posts >></a>
  </div>
</p>