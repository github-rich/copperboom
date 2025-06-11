---
layout: blog_cards
title: Page Two
permalink: page_two
---
<div class="cards-container">

<!-- Ongoing width-spanning flexboxes -->
  {% for post in site.posts offset:15 limit:10 %}
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

<p>
  <div class="center-text">
    <a href="/index"><< Newer Posts</a>
  </div>
</p>