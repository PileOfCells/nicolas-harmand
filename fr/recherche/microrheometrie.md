---
ref: microrheometry
parent: research
lang: fr
permalink: /fr/recherche/microrheometrie/
title: Senseurs de contraintes et mesures de rhéologie dans les tissus vivants
description: >-
  Microrhéométrie active dans des embryons en développement : des gouttes de
  ferrofluide utilisées comme senseurs in situ et non destructifs des
  contraintes mécaniques de la matrice extracellulaire.
---
<!-- SYNC: research/microrheometry.md -->

<a class="back-link" href="{{ '/fr/recherche/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Senseurs de contraintes et mesures de rhéologie dans les tissus vivants</h1>

<div class="prose">
  <p>Comprendre comment les forces mécaniques façonnent les tissus au cours du développement embryonnaire suppose de mesurer leurs propriétés physiques <em lang="la">in vivo</em>. La rhéologie macroscopique classique ne le permet pas : elle est destructive, et elle n'atteint pas les échelles cellulaires.</p>

  <p>Nous injectons des gouttes de ferrofluide directement dans la matrice extracellulaire, ou entre les cellules de l'embryon. En appliquant des champs magnétiques oscillants contrôlés, nous déformons ces gouttes ; leur déformation donne une lecture locale et non destructive de la réponse mécanique (viscoélasticité, plasticité) de la matrice environnante.</p>

  <p>Cette approche cartographie la dynamique spatio-temporelle des forces de cisaillement et des contraintes mécaniques au cours de la morphogenèse.</p>

  <figure class="figure">
    {%- include picture.html name="stress-sensors" widths="400,800,1600" sizes="(max-width: 900px) 100vw, 840px" w=840 h=606 alt="Gouttes de ferrofluide déformées par un champ magnétique dans un tissu, en microscopie de fluorescence" -%}
    <figcaption>Micro-gouttes d'émulsion inverse utilisées comme senseurs de contrainte mécanique <em>in vivo</em>.</figcaption>
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
