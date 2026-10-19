---
ref: publications
lang: fr
permalink: /fr/publications/
title: Publications
description: >-
  Articles, thèse de doctorat et brevets de Nicolas Harmand.
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
  <h2 class="section-title">{{ site.data.i18n[page.lang].thesis }}</h2>
  {% include thesis.html %}
</section>

<section class="section publication-group">
  <h2 class="section-title">{{ site.data.i18n[page.lang].patents }}</h2>
  <p class="note">Trois familles de brevets déposées pendant mon activité de R&amp;D industrielle chez Saint-Gobain Recherche Paris (titulaire : Saint-Gobain Weber). Elles portent sur le contrôle de l'écoulement et du dépôt de matière en impression 3D.</p>
  {% include patent-list.html %}
</section>
