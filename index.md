---
layout: default
title: "Mus photography blog"
---

I'm mus. This website is a minimalist repository of observations.

My work tends to explore what i call "slice of life", streets, architecture and various feelings that i want to narrate. This is currently more of an alfa version of my final website.

Below is a collection of my work in photography since march of 2026 when i got a **RICOH GR III** since i wanted to learn photography for an upcoming trip in august and started my journey in photography (photos are after experiences best sorts of souveniers and pieces of free-willed memories we make along the way). In the future i will add blog like posts about topics that interest me like technology, music, minimalism, cooking...


<div class="strong-index">

{% assign feed = site.books | concat: site.posts | sort: "date" | reverse %}
{% for item in feed %}
  <article class="feed-entry">
    
    <a href="{{ item.url | relative_url }}" class="entry-link">
      <h3 class="entry-title">{{ item.title }}</h3>
      
      {% if item.cover_image %}
        <div class="photo-preview">
          <img src="{{ item.cover_image | relative_url }}" alt="{{ item.title }}" class="gritty-thumb">
        </div>
      {% elsif item.collection == 'posts' %}
        <div class="text-preview">
          <p>{{ item.excerpt | strip_html | truncatewords: 30 }} <span class="read-more">[...]</span></p>
        </div>
      {% endif %}
      
      <span class="entry-date">{{ item.date | date: "%Y.%m" }}</span>
    </a>

  </article>
{% endfor %}

</div>

---

Send me an email: <autumntrees@protonmail.com>