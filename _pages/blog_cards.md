---
layout: blog_cards
title: Posts
permalink: index
---
<div class="cards-container">
  <!-- First row with two cards -->
  <div class="card-row">
    {% for post in site.posts limit:2 %}
    <a href="{{ post.url }}" class="card">
      <div class="card-figure">
        <img src="{{ post.image }}" alt="{{ post.image-alt-text }}">
      </div>
      <div class="card-body">
        <h2 class="card-title">{{ post.title }}</h2>
      </div>
    </a>
    {% endfor %}
  </div>

  <!-- Second row with three cards -->
  <div class="card-row">
    {% for post in site.posts offset:2 limit:3 %}
    <a href="{{ post.url }}" class="card">
      <div class="card-figure">
        <img src="{{ post.image }}" alt="{{ post.image-alt-text }}">
      </div>
      <div class="card-body">
        <h2 class="card-title">{{ post.title }}</h2>
      </div>
    </a>
    {% endfor %}
  </div>

  <!-- Two width-spanning flexboxes -->
  {% for post in site.posts offset:5 limit:5 %}
  <a href="{{ post.url }}" class="flexbox-card">
    <div class="flexbox-figure">
      <img src="{{ post.image }}" alt="{{ post.image-alt-text }}">
    </div>
    <div class="flexbox-body">
      <h2 class="flexbox-title">{{ post.title }}</h2>
    </div>
  </a>
  {% endfor %}
</div>