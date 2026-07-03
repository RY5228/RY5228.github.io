---
layout: archive
title: "Sitemap"
permalink: /en/sitemap/
author_profile: true
lang: en
translation_key: sitemap
---

{% include base_path %}

English pages on this site.

{% assign localized_pages = site.pages | where: "lang", page.lang | sort: "url" %}
<ul>
{% for item in localized_pages %}
  {% if item.translation_key %}
    <li><a href="{{ item.url | relative_url }}">{{ item.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
