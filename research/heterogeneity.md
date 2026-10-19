---
ref: heterogeneity
parent: research
lang: en
permalink: /research/heterogeneity/
title: Heterogeneous tissues under flow
description: >-
  Research project: how cellular heterogeneity and tissue rheology shape one
  another, measured without assuming a constitutive law.
---

<a class="back-link" href="{{ '/research/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Heterogeneous tissues under flow</h1>

<div class="prose">
  <p class="question">How do cellular heterogeneity and tissue mechanics shape one another?</p>
  <p class="lead">Tissues are rarely made of identical cells, in an embryo as in a growing tumour, and what happens to them depends on how a mixed tissue deforms and flows. Does a tissue made of two populations behave as the average of its constituents? And can imposed flows drive the segregation or the mixing of those populations?</p>
</div>

<section class="section">
  <h2 class="section-title">Reading mechanics without assuming a constitutive law</h2>
  <div class="prose">
    <p>The analysis is deliberately model-agnostic: it extracts rheological information from the images before any constitutive law is chosen.</p>
    <ul class="bullet-list">
      <li><strong>Force inference.</strong> Relative junction tensions are read from the angles at which cell edges meet, with the tools I developed during my PhD. Their distribution quantifies the heterogeneity of tensions at a given instant.</li>
      <li><strong>Deformation versus rearrangements.</strong> The deformation of the tissue is split into cell-shape changes and neighbour exchanges, as is done for liquid foams and, at the Laboratoire Jean Perrin, for adhesive biomimetic emulsions. The irreversible part carried by rearrangements is a rheological measurement in its own right.</li>
      <li><strong>Active versus passive.</strong> The stochastic-thermodynamics framework of J. O'Byrne separates the part of a dynamics that relaxes towards equilibrium from the part that breaks time-reversal symmetry: what, in the flow of a tissue, is irreducibly active.</li>
    </ul>

    <figure class="figure figure--narrow">
      {%- include picture.html name="force-inference" widths="400,800,1200" sizes="(max-width: 900px) 100vw, 560px" w=560 h=538 alt="Network of cell junctions in an epithelial monolayer, each junction coloured by its inferred tension, from dark red for low to white for high" -%}
      <figcaption>Force inference on an MDCK monolayer: each junction is coloured by its tension relative to the mean, from dark red (low) to white (high). From my PhD thesis (2019).</figcaption>
    </figure>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Three questions</h2>
  <div class="prose">
    <ol class="question-list">
      <li>When an epithelium flows, how much of the flow comes from cells deforming, how much from cells exchanging neighbours, and how much is irreducibly active?</li>
      <li>When two cell populations with different adhesion are mixed, is the rheology of the mix the average of its constituents?</li>
      <li>Do the relations found in two dimensions hold in three, where ferrofluid droplets can measure the rheology locally?</li>
    </ol>
    <p>The project builds on the rest of my work: force inference comes from my thesis on <a href="{{ '/research/epithelia/' | relative_url }}">epithelial shape</a>, the ferrofluid droplets from my work on <a href="{{ '/research/microrheometry/' | relative_url }}">stresses in embryos</a>.</p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.heterogeneity %}
    <li><strong>{{ c.group[page.lang] }}:</strong> {{ c.people }}</li>
    {%- endfor %}
  </ul>
</section>

{%- assign related = site.data.publications.articles | where: "topic", "heterogeneity" -%}
{%- if related.size > 0 %}
<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].related_publications }}</h2>
  {% include pub-list.html items=related show_images=true %}
</section>
{%- endif %}
