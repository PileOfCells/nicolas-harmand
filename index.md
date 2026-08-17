---
ref: home
lang: en
permalink: /
title: Nicolas Harmand
description: >-
  Nicolas Harmand, postdoctoral researcher at Laboratoire Jean Perrin
  (Sorbonne Université / CNRS). Soft matter physics applied to living systems:
  tissue mechanics, morphogenesis and in situ force sensors.
---

<section class="hero-section">
  <div class="hero-container">
    <div class="hero-text">
      <h1>Nicolas Harmand</h1>
      <p class="subtitle">Physics of living matter</p>
      <p class="institution">Laboratoire Jean Perrin — Sorbonne Université / CNRS, Paris</p>

      <div class="hero-logos">
        <img src="{{ '/assets/img/logo-ljp-100.png' | relative_url }}" width="168" height="40" alt="Laboratoire Jean Perrin" class="inst-logo" decoding="async">
        <img src="{{ '/assets/img/logo-su-100.png' | relative_url }}" width="99" height="40" alt="Sorbonne Université" class="inst-logo" decoding="async">
        <img src="{{ '/assets/img/logo-cnrs-100.png' | relative_url }}" width="40" height="40" alt="CNRS" class="inst-logo" decoding="async">
      </div>

      <div class="bio">
        <p>I use soft matter physics to understand living systems. My work is experimental: I design measurements that put physical models of tissues to the test (models I build with theoreticians, and sometimes on my own) to find where they hold, where they break, and which mechanism is missing.</p>
        <p>Trained as an engineer at ESPCI Paris and holding a PhD in biophysics, I spent three and a half years in industrial R&amp;D at Saint-Gobain, where I developed physical processes that led to three international patents. I returned to fundamental research in 2024 at the Laboratoire Jean Perrin, where I develop micrometre-scale sensors to measure mechanical stresses inside developing embryos.</p>
      </div>

      <div class="links-wrapper">
        <a href="mailto:{{ site.data.identity.email }}" class="btn btn-primary">Email</a>
        <a href="https://scholar.google.com/citations?user={{ site.data.identity.scholar }}" rel="noopener noreferrer" target="_blank" class="btn btn-secondary">Google Scholar</a>
        <a href="https://orcid.org/{{ site.data.identity.orcid }}" rel="noopener noreferrer" target="_blank" class="btn btn-secondary">ORCID</a>
        <a href="{{ '/assets/docs/cv.pdf' | relative_url }}" class="btn btn-secondary">CV (PDF, 52 kB)</a>
      </div>
    </div>

    <div class="hero-photo-wrapper">
      {%- include picture.html name="portrait" widths="200,400,600" sizes="(max-width: 600px) 160px, 200px" w=200 h=250 alt="Nicolas Harmand" class="hero-photo" loading="eager" priority=true -%}
    </div>
  </div>

  <ul class="facts">
    <li><strong>Phys. Rev. X</strong>Among the eight papers of the year (2021)</li>
    <li><strong>Journal cover</strong>The European Physical Journal E, 2022</li>
    <li><strong>3 international patents</strong>Filed at Saint-Gobain, 2023–2024</li>
    <li><strong>3 image awards</strong>Nikon, CNRS, French Physical Society</li>
  </ul>
</section>

<section class="section">
  <h2 class="section-title">Research</h2>
  <div class="prose">
    <p class="question">How do cellular heterogeneity and tissue mechanics shape one another?</p>
  </div>
  {%- include research-cards.html -%}
</section>

<section class="section">
  <h2 class="section-title">Latest</h2>
  <ul class="news-list">
    {%- assign news = site.data.news | sort: "date" | reverse -%}
    {%- for item in news limit: 4 %}
    <li class="news-item">
      <time datetime="{{ item.date | date: '%Y-%m-%d' }}">{{ item.date | date: "%B %Y" }}</time>
      <span>{{ item.text[page.lang] | markdownify | remove: '<p>' | remove: '</p>' }}{% if item.url %} <a href="{{ item.url }}" rel="noopener noreferrer" target="_blank">↗</a>{% endif %}</span>
    </li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">Education</h2>
  <div class="timeline">
    <div class="timeline-item">
      <span class="time-period">2016-2019</span>
      <div class="time-details">
        <h3>PhD in Biophysics</h3>
        <p class="location">Université Paris Cité — Laboratoire Matière et Systèmes Complexes, Paris</p>
        <p class="description">Relevance and limits of surface and line tensions in accounting for the shapes of epithelial cells. Supervised by Sylvie Hénon.</p>
      </div>
    </div>
    <div class="timeline-item">
      <span class="time-period">2012-2016</span>
      <div class="time-details">
        <h3>Engineering degree, ESPCI Paris &amp; MSc ICFP</h3>
        <p class="location">ESPCI Paris - PSL / Sorbonne Université, Paris</p>
        <p class="description">Major in physics; MSc ICFP, Soft Matter and Biological Physics track.</p>
      </div>
    </div>
  </div>
</section>
