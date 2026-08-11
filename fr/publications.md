---
ref: publications
lang: fr
permalink: /fr/publications/
title: Publications
description: >-
  Publications et brevets internationaux de Nicolas Harmand.
---
<!-- SYNC: publications.md -->

<h1>Publications</h1>

<div class="prose">
  <p class="lead">Également sur <a href="https://scholar.google.com/citations?user={{ site.data.identity.scholar }}" rel="noopener noreferrer" target="_blank">Google Scholar</a> et <a href="https://orcid.org/{{ site.data.identity.orcid }}" rel="noopener noreferrer" target="_blank">ORCID</a>.</p>
</div>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].articles }}</h2>
  {% include pub-list.html items=site.data.publications.articles show_images=true %}
</section>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].patents }}</h2>
  <p class="note">Déposés au cours de trois ans et demi de R&amp;D industrielle chez Saint-Gobain Recherche Paris.</p>
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
