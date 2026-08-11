---
ref: epithelia
parent: research
lang: en
permalink: /research/epithelia/
title: Epithelial mechanics
description: >-
  How substrate curvature dictates the three-dimensional shape of epithelial
  cells, and how far simple surface and line tensions go in explaining it.
---

<a class="back-link" href="{{ '/research/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Epithelial mechanics</h1>

<div class="prose">
  <p>Epithelia are layers of tightly bound cells lining most organs and cavities of living organisms. They are subject to severe geometric and mechanical constraints, particularly along strongly curved surfaces such as intestinal villi or blood vessels.</p>

  <p>We combine high-resolution 3D confocal microscopy with theoretical modelling to characterise the three-dimensional morphology of epithelial cells on micro-engineered curved and wavy substrates. We follow how cell thickness and apical and basal areas vary, and how these are constrained by effective surface tensions and by active regulation of the actomyosin cytoskeleton.</p>

  <p>Formalising these measurements as continuum mechanical models shows how far simple physical concepts — surface and line tensions — go in describing 3D cell shape, and where they stop. That boundary is the interesting part: it is where an additional, actively regulated mechanism has to be invoked.</p>

  <div class="figure-grid">
    <figure class="figure">
      {%- include picture.html name="epithelia-shape" widths="400,800" sizes="(max-width: 900px) 100vw, 410px" w=410 h=410 alt="Confocal reconstruction of epithelial cells on a curved substrate: nuclei in cyan, cell contours in red" -%}
      <figcaption>3D shape of epithelial cells on curved substrates.</figcaption>
    </figure>
    <figure class="figure">
      {%- include picture.html name="epithelia-thickness" widths="800,1600" sizes="(max-width: 900px) 100vw, 410px" w=410 h=53 alt="Cross-section of an epithelium on a wavy substrate showing thickness variations" -%}
      <figcaption>Thickness measurements on wavy substrates, compared with continuum models.</figcaption>
    </figure>
  </div>
</div>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.epithelia %}
    <li><strong>{{ c.group[page.lang] }} :</strong> {{ c.people }}</li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].related_publications }}</h2>
  {%- assign related = site.data.publications.articles | where: "topic", "epithelia" -%}
  {% include pub-list.html items=related show_images=true %}
</section>
