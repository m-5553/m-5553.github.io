---
layout: default
title: "m-5553 photography"
---

### Hi, I'm Matija. This website is my minimalist repository of observations.

My work tends to explore what i call **slice of life** : streets, architecture and various feelings that i want to narrate. This is currently more of an beta version of my final website.

Below is a collection of my work in photography since the march of 2026 when i got a **RICOH GR III** since i wanted to learn photography for an upcoming trip and started my journey in photography (photos are after experiences best sorts of souveniers and pieces of free-willed memories we make along the way). In the future i will add blog like posts about topics that interest me like technology, music, minimalism, cooking...

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

My inspiration mainly comes from other photographers, music and anime:
- Daido Moriyama, Mookio, Garry Winogrand, Yoshitoshi ABe, various photos from imageboards
- Number Girl, Sunny Day Real Estate, Jimmy Eat World, The Get Up Kids, College
- NHK ni Youkoso!, Haibane Renmei, Serial Experiments Lain, Bakemonogatari, GTO, Texhnolyze   .

All of the images are SOOC. I use **[mookio's settings](https://blog.mookio.net/2019/10/ricoh-gr.html)**. 

### Send me an email: <autumntrees@protonmail.com>

