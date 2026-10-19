---
ref: publications
lang: en
permalink: /publications/
title: Publications
description: >-
  Peer-reviewed articles, PhD thesis and patents by Nicolas Harmand.
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
  <h2 class="section-title">{{ site.data.i18n[page.lang].thesis }}</h2>
  {% include thesis.html %}
</section>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].patents }}</h2>
  <p class="note">Three patent families filed during my industrial R&amp;D work at Saint-Gobain Recherche Paris (holder: Saint-Gobain Weber). They cover the control of material flow and deposition in 3D printing.</p>
  {% include patent-list.html %}
</section>
