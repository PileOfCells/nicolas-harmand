---
ref: epithelia
parent: research
lang: fr
permalink: /fr/recherche/epitheliums/
title: Cellules épithéliales sur substrats courbes
description: >-
  Comment la courbure d'un substrat fixe l'épaisseur des cellules épithéliales,
  jusqu'où un modèle minimal de tensions de surface et de ligne l'explique, et
  où il rompt.
---
<!-- SYNC: research/epithelia.md -->

<a class="back-link" href="{{ '/fr/recherche/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Cellules épithéliales sur substrats courbes</h1>

<div class="prose">
  <p class="lead">Les épithéliums tapissent la plupart des organes, et beaucoup sont courbes. Ma thèse posait une question volontairement étroite : la forme tridimensionnelle d'une cellule épithéliale sur une surface courbe peut-elle s'expliquer par une poignée de tensions, et sinon, que manque-t-il ?</p>
</div>

<section class="section">
  <h2 class="section-title">Un modèle minimal</h2>
  <div class="prose">
    <p>J'ai cultivé des monocouches épithéliales sur des substrats ondulés et mesuré l'épaisseur des cellules sur les crêtes et dans les vallées. Aux courtes longueurs d'onde, les cellules sont plus épaisses dans les vallées, comme elles le sont dans le sillon ventral de l'embryon de drosophile au moment où il se replie.</p>
    <p>Un modèle de type mousse, qui décrit chaque cellule par les tensions de ses faces, prédit l'inverse. Un seul ingrédient supplémentaire le corrige : une tension de ligne le long de la ceinture apicale d'actine. Sa valeur ajustée change à peine lorsqu'on perturbe l'adhésion ou l'activité de la myosine.</p>

    <div class="figure-grid">
      <figure class="figure">
        {%- include picture.html name="epithelia-shape" widths="400,800" sizes="(max-width: 900px) 100vw, 410px" w=410 h=410 alt="Image confocale d'un épithélium sur un substrat ondulé : bandes diagonales de cellules, noyaux en cyan, jonctions en vert et blanc" -%}
        <figcaption>Cellules MDCK sur un substrat ondulé, un unique plan confocal coupant les crêtes.</figcaption>
      </figure>
      <figure class="figure">
        {%- include picture.html name="epithelia-thickness" widths="800,1600" sizes="(max-width: 900px) 100vw, 410px" w=410 h=53 alt="Coupe d'un épithélium sur substrat ondulé montrant les variations d'épaisseur" -%}
        <figcaption>Coupe de la monocouche le long des ondulations.</figcaption>
      </figure>
    </div>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Où il rompt</h2>
  <div class="prose">
    <p>Le modèle ne peut pas expliquer que l'effet sature aux fortes courbures : il manque un terme qui résiste à l'aplatissement, et le noyau en est le candidat le plus probable. Décrire l'épithélium comme un film continu mène au même endroit : un film élastique passif échoue, et les mesures exigent une contrainte active dans la couche apicale.</p>
    <p>Nommer cette frontière est un résultat au même titre que l'ajustement : elle dit quel mécanisme une description des épithéliums par des tensions doit ajouter.</p>
  </div>
</section>

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
