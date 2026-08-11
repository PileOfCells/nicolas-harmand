---
ref: home
lang: fr
permalink: /fr/
title: Physique du vivant
description: >-
  Nicolas Harmand, chercheur post-doctorant au Laboratoire Jean Perrin
  (Sorbonne Université / CNRS). Physique de la matière molle appliquée au
  vivant : mécanique des tissus, morphogenèse et senseurs de contrainte in situ.
---
<!-- SYNC: index.md : toute modification ici doit être reportée sur la page anglaise. -->

<section class="hero-section">
  <div class="hero-container">
    <div class="hero-text">
      <h1>Nicolas Harmand</h1>
      <p class="subtitle">Physique du vivant</p>
      <p class="institution">Laboratoire Jean Perrin — Sorbonne Université / CNRS, Paris</p>

      <div class="hero-logos">
        <img src="{{ '/assets/img/logo-ljp-100.png' | relative_url }}" width="168" height="40" alt="Laboratoire Jean Perrin" class="inst-logo" decoding="async">
        <img src="{{ '/assets/img/logo-su-100.png' | relative_url }}" width="99" height="40" alt="Sorbonne Université" class="inst-logo" decoding="async">
        <img src="{{ '/assets/img/logo-cnrs-100.png' | relative_url }}" width="40" height="40" alt="CNRS" class="inst-logo" decoding="async">
      </div>

      <div class="bio">
        <p>J'utilise la physique de la matière molle pour comprendre le vivant. Ma démarche est expérimentale : je conçois des mesures qui mettent à l'épreuve les modèles physiques des tissus (que je construis avec des théoriciens, et parfois seul) pour déterminer où ils tiennent, où ils rompent, et quel mécanisme leur manque.</p>
        <p>Ingénieur ESPCI Paris et docteur en biophysique, j'ai passé trois ans et demi en R&amp;D industrielle chez Saint-Gobain, où j'ai développé des procédés physiques ayant donné lieu à trois brevets internationaux. Je suis revenu à la recherche fondamentale en 2024 au Laboratoire Jean Perrin, où je développe des senseurs micrométriques pour mesurer les contraintes mécaniques à l'intérieur d'embryons en développement.</p>
      </div>

      <div class="links-wrapper">
        <a href="mailto:{{ site.data.identity.email }}" class="btn btn-primary">Courriel</a>
        <a href="https://scholar.google.com/citations?user={{ site.data.identity.scholar }}" rel="noopener noreferrer" target="_blank" class="btn btn-secondary">Google Scholar</a>
        <a href="https://orcid.org/{{ site.data.identity.orcid }}" rel="noopener noreferrer" target="_blank" class="btn btn-secondary">ORCID</a>
        <a href="{{ '/assets/docs/cv.pdf' | relative_url }}" class="btn btn-secondary">CV (PDF, 52 ko)</a>
      </div>
    </div>

    <div class="hero-photo-wrapper">
      {%- include picture.html name="portrait" widths="200,400,600" sizes="(max-width: 600px) 160px, 200px" w=200 h=250 alt="Nicolas Harmand" class="hero-photo" loading="eager" priority=true -%}
    </div>
  </div>

  <ul class="facts">
    <li><strong>Phys. Rev. X</strong>Parmi les 8 articles de l'année, 2021</li>
    <li><strong>Couverture de journal</strong>The European Physical Journal E, 2022</li>
    <li><strong>3 brevets internationaux</strong>Déposés chez Saint-Gobain, 2023-2024</li>
    <li><strong>3 prix d'images</strong>Nikon, CNRS, Société Française de Physique</li>
  </ul>
</section>

<section class="section">
  <h2 class="section-title">Recherche</h2>
  <div class="prose">
    <p class="question">Comment l'hétérogénéité cellulaire et la mécanique tissulaire s'influencent-elles mutuellement ?</p>
    <p>Les tissus biologiques sont des matériaux actifs et hétérogènes. Que ce soit au cours de l'embryogenèse ou de la progression tumorale, la manière dont les propriétés mécaniques (déformations, écoulements) et les hétérogénéités cellulaires (adhésion, contractilité) rétroagissent les unes sur les autres reste largement incomprise. J'aborde cette question par deux angles complémentaires : mesurer les forces à l'intérieur des tissus vivants à l'aide de senseurs que nous concevons nous-mêmes, et rendre compte des formes qu'adoptent les cellules et les tissus par des modèles inspirés de la physique de la matière molle.</p>
    <p><a href="{{ '/fr/recherche/' | relative_url }}">En savoir plus sur mes recherches</a></p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Actualités</h2>
  <ul class="news-list">
    {%- assign news = site.data.news | sort: "date" | reverse -%}
    {%- for item in news limit: 4 %}
    <li class="news-item">
      <time datetime="{{ item.date | date: '%Y-%m-%d' }}">{{ item.date | date: "%m/%Y" }}</time>
      <span>{{ item.text[page.lang] | markdownify | remove: '<p>' | remove: '</p>' }}{% if item.url %} <a href="{{ item.url }}" rel="noopener noreferrer" target="_blank">↗</a>{% endif %}</span>
    </li>
    {%- endfor %}
  </ul>
</section>

<section class="section">
  <h2 class="section-title">Formation</h2>
  <div class="timeline">
    <div class="timeline-item">
      <span class="time-period">2016-2019</span>
      <div class="time-details">
        <h3>Doctorat en biophysique</h3>
        <p class="location">Université Paris Cité — Laboratoire Matière et Systèmes Complexes, Paris</p>
        <p class="description">Pertinence et limites des tensions de surface et de ligne pour rendre compte des formes des cellules épithéliales. Sous la direction de Sylvie Hénon.</p>
      </div>
    </div>
    <div class="timeline-item">
      <span class="time-period">2012-2016</span>
      <div class="time-details">
        <h3>Diplôme d'ingénieur ESPCI Paris &amp; Master ICFP</h3>
        <p class="location">ESPCI Paris - PSL / Sorbonne Université, Paris</p>
        <p class="description">Majeure physique ; Master 2 ICFP, parcours <em lang="en">Soft Matter and Biological Physics</em>.</p>
      </div>
    </div>
  </div>
</section>
