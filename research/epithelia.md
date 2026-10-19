---
ref: epithelia
parent: research
lang: en
permalink: /research/epithelia/
title: Epithelial cells on curved substrates
description: >-
  How the curvature of a substrate sets the thickness of epithelial cells, how
  far a minimal model of surface and line tensions explains it, and where it
  breaks.
---

<a class="back-link" href="{{ '/research/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Epithelial cells on curved substrates</h1>

<div class="prose">
  <p class="lead">Epithelia line most organs, and many of them are curved. My PhD asked a deliberately narrow question: can the three-dimensional shape of an epithelial cell on a curved surface be explained by a handful of tensions, and if not, what is missing?</p>
</div>

<section class="section">
  <h2 class="section-title">A minimal model</h2>
  <div class="prose">
    <p>I grew epithelial monolayers on wavy substrates and measured cell thickness on the crests and in the valleys. On short wavelengths, cells are thicker in the valleys, as they are in the folding ventral furrow of the <em>Drosophila</em> embryo.</p>
    <p>A foam-like model, in which each cell is described by the tensions of its faces, predicts the opposite. One extra ingredient corrects it: a line tension along the apical actin belt. Its fitted value barely changes when adhesion or myosin activity is perturbed.</p>

    <div class="figure-grid">
      <figure class="figure">
        {%- include picture.html name="epithelia-shape" widths="400,800" sizes="(max-width: 900px) 100vw, 410px" w=410 h=410 alt="Confocal image of an epithelium on a wavy substrate: diagonal stripes of cells, nuclei in cyan, junctions in green and white" -%}
        <figcaption>MDCK cells on a wavy substrate, a single confocal plane cutting through the crests.</figcaption>
      </figure>
      <figure class="figure">
        {%- include picture.html name="epithelia-thickness" widths="800,1600" sizes="(max-width: 900px) 100vw, 410px" w=410 h=53 alt="Cross-section of an epithelium on a wavy substrate showing thickness variations" -%}
        <figcaption>Cross-section of the monolayer along the waves.</figcaption>
      </figure>
    </div>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Where it breaks</h2>
  <div class="prose">
    <p>The model cannot explain why the effect saturates at high curvature: a term that resists flattening is missing, and the nucleus is the most likely candidate. Describing the epithelium as a continuous film leads to the same place: a passive elastic film fails, and the data require an active stress in the apical layer.</p>
    <p>Naming that boundary is the result as much as the fit: it says which mechanism a tension-based description of epithelia has to add.</p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.epithelia %}
    <li><strong>{{ c.group[page.lang] }}:</strong> {{ c.people }}</li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].related_publications }}</h2>
  {%- assign related = site.data.publications.articles | where: "topic", "epithelia" -%}
  {% include pub-list.html items=related show_images=true %}
</section>
