---
ref: microrheometry
parent: research
lang: en
permalink: /research/microrheometry/
title: Measuring stresses and rheology inside embryos
description: >-
  Liquid droplets injected into developing tissues as in situ stress sensors,
  and ferrofluid droplets driven by a magnetic field to measure the stiffness,
  relaxation times and plasticity of embryonic tissues.
---

<a class="back-link" href="{{ '/research/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Measuring stresses and rheology inside embryos</h1>

<div class="prose">
  <p class="lead">Embryonic tissues shape themselves under forces that no external instrument can reach. The alternative is to place a deformable probe inside the tissue and read its shape: a liquid droplet is the simplest one, made spherical by its own tension and deformed by the stresses of the tissue around it.</p>
</div>

<section class="section">
  <h2 class="section-title">Droplets that functionalise themselves</h2>
  <div class="prose">
    <p class="status-label">{{ site.data.i18n[page.lang].published }}</p>
    <p>We designed oil droplets that coat themselves once injected. Each droplet carries an inverse emulsion whose inner droplets, as the emulsion destabilises, fuse with the surface and deliver binding molecules to it, or release their content locally. Tuning the surfactants makes the droplets soft enough to deform under tissue stresses while keeping this self-functionalisation. Calibrated in gels of known stiffness, they were tested in human brain organoids and in zebrafish embryos.</p>
    <p>A passive droplet has one limit: it cannot measure the stiffness of the tissue around it.</p>

    <figure class="figure">
      {%- include picture.html name="stress-sensors" widths="400,800,1600" sizes="(max-width: 900px) 100vw, 840px" w=840 h=606 alt="Schematic of the self-functionalisation: inner water droplets fuse with the oil interface and leave binding molecules on it; a droplet in a zebrafish embryo near the retina, lens and olfactory placode; and a graph of its local stress over time" -%}
      <figcaption>Self-functionalisation of the droplets, and a droplet in a zebrafish embryo. Adapted from Vasiljevic, Harmand <em>et al.</em>, <em>EPJ E</em> 2026 (CC BY 4.0).</figcaption>
    </figure>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Ferrofluid droplets: from sensor to rheometer</h2>
  <div class="prose">
    <p class="status-label">{{ site.data.i18n[page.lang].ongoing }}</p>
    <p>A ferrofluid droplet can also be pulled by a magnetic field, which turns the sensor into a rheometer. The method exists but has spread little, because it requires dedicated equipment. With colleagues at the Laboratoire Jean Perrin and in Marie-Anne Breau's group, I am building a version any lab can mount: a removable module of motorised permanent magnets that sits on a standard microscope, with droplets made from a commercial ferrofluid.</p>
    <p>A single droplet then reads the residual stress, the stiffness, the relaxation times and the plasticity of the surrounding tissue. In the zebrafish embryo, first recordings already tell tissues apart.</p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.microrheometry %}
    <li><strong>{{ c.group[page.lang] }}:</strong> {{ c.people }}</li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].related_publications }}</h2>
  {%- assign related = site.data.publications.articles | where: "topic", "microrheometry" -%}
  {% include pub-list.html items=related show_images=true %}
</section>
