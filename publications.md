---
ref: publications
lang: en
permalink: /publications/
title: Publications
description: >-
  Peer-reviewed articles and international patents by Nicolas Harmand.
---

<h1>Publications</h1>

<div class="prose">
  <p class="lead">Also on <a href="https://scholar.google.com/citations?user={{ site.data.identity.scholar }}" rel="noopener noreferrer" target="_blank">Google Scholar</a> and <a href="https://orcid.org/{{ site.data.identity.orcid }}" rel="noopener noreferrer" target="_blank">ORCID</a>.</p>
</div>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].articles }}</h2>
  {% include pub-list.html items=site.data.publications.articles show_images=true %}
</section>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].patents }}</h2>
  <p class="note">Filed during three and a half years of industrial R&amp;D at Saint-Gobain Recherche Paris.</p>
  <ul class="pub-list">
    {%- for p in site.data.publications.patents %}
    <li class="pub-item">
      <span class="pub-year">{{ p.year }}</span>
      <div class="pub-details">
        <span class="pub-title">{{ p.title }}</span>
        <span class="pub-authors">{{ p.authors | replace: 'N. Harmand', '<strong>N. Harmand</strong>' }}</span>
        <span class="pub-journal">{{ p.number }}</span>
        <span class="pub-links">
          <a class="pub-link-btn" href="{{ p.url }}" rel="noopener noreferrer" target="_blank">Google Patents</a>
        </span>
      </div>
    </li>
    {%- endfor %}
  </ul>
</section>
