---
ref: epithelia
parent: research
lang: fr
permalink: /fr/recherche/epitheliums/
title: Mécanique des épithéliums
description: >-
  Comment la courbure d'un substrat dicte la forme tridimensionnelle des
  cellules épithéliales, et jusqu'où de simples tensions de surface et de ligne
  suffisent à l'expliquer.
---
<!-- SYNC: research/epithelia.md -->

<a class="back-link" href="{{ '/fr/recherche/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Mécanique des épithéliums</h1>

<div class="prose">
  <p>Les épithéliums sont des couches de cellules jointives qui tapissent la plupart des organes et cavités des organismes vivants. Ils subissent des contraintes géométriques et mécaniques sévères, en particulier le long de surfaces fortement courbées comme les villosités intestinales ou les vaisseaux sanguins.</p>

  <p>Nous combinons microscopie confocale 3D haute résolution et modélisation théorique pour caractériser la morphologie tridimensionnelle des cellules épithéliales sur des substrats courbes et ondulés micro-fabriqués. Nous suivons l'évolution de l'épaisseur cellulaire et des surfaces apicale et basale, et la manière dont ces paramètres sont contraints par des tensions de surface effectives et par la régulation active du cytosquelette d'actomyosine.</p>

  <p>Formaliser ces mesures sous forme de modèles mécaniques continus montre jusqu'où des concepts physiques simples — tensions de surface et de ligne — décrivent la forme cellulaire 3D, et où ils s'arrêtent. Cette frontière est la partie intéressante : c'est là qu'il faut invoquer un mécanisme supplémentaire, activement régulé.</p>

  <div class="figure-grid">
    <figure class="figure">
      {%- include picture.html name="epithelia-shape" widths="400,800" sizes="(max-width: 900px) 100vw, 410px" w=410 h=410 alt="Reconstruction confocale de cellules épithéliales sur un substrat courbe : noyaux en cyan, contours cellulaires en rouge" -%}
      <figcaption>Forme 3D des cellules épithéliales sur substrats courbes.</figcaption>
    </figure>
    <figure class="figure">
      {%- include picture.html name="epithelia-thickness" widths="800,1600" sizes="(max-width: 900px) 100vw, 410px" w=410 h=53 alt="Coupe d'un épithélium sur substrat ondulé montrant les variations d'épaisseur" -%}
      <figcaption>Mesures d'épaisseur sur substrats ondulés, confrontées aux modèles continus.</figcaption>
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
