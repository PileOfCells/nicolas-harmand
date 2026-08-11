---
ref: microrheometry
parent: research
lang: en
permalink: /research/microrheometry/
title: Force sensors in living tissues
description: >-
  Active microrheometry inside developing embryos: ferrofluid droplets used as
  in situ, non-destructive sensors of mechanical stress in the extracellular
  matrix.
---

<a class="back-link" href="{{ '/research/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Force sensors in living tissues</h1>

<div class="prose">
  <p>Understanding how mechanical forces shape tissues during embryonic development requires measuring their physical properties <em>in vivo</em>. Conventional macroscopic rheology cannot do this: it is destructive, and it does not reach cellular scales.</p>

  <p>We inject ferrofluid droplets directly into the extracellular space, or between cells of the embryo. Applying controlled oscillating magnetic fields deforms these droplets, and their deformation gives a local, non-destructive read-out of the mechanical response — viscoelasticity, stiffness — of the surrounding matrix. The most recent generation of sensors functionalises its own surface <em>in situ</em>, which removes the delicate chemistry step that limited how and where the droplets could be used.</p>

  <p>The approach maps the spatiotemporal dynamics of shear forces and mechanical stresses during morphogenesis, bridging the statistical physics of disordered media and the physical biology of living systems.</p>

  <figure class="figure">
    {%- include picture.html name="stress-sensors" widths="400,800,1600" sizes="(max-width: 900px) 100vw, 840px" w=840 h=606 alt="Ferrofluid droplets deformed by a magnetic field inside a tissue, imaged by fluorescence microscopy" -%}
    <figcaption>Active ferrofluid micro-droplets used as <em>in situ</em> mechanical stress sensors.</figcaption>
  </figure>
</div>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.microrheometry %}
    <li><strong>{{ c.group[page.lang] }} :</strong> {{ c.people }}</li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].related_publications }}</h2>
  {%- assign related = site.data.publications.articles | where: "topic", "microrheometry" -%}
  {% include pub-list.html items=related show_images=true %}
</section>
