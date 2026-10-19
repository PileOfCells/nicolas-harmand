---
ref: microrheometry
parent: research
lang: fr
permalink: /fr/recherche/microrheometrie/
title: Mesurer contraintes et rhéologie dans l'embryon
description: >-
  Des gouttes liquides injectées dans les tissus en développement comme
  senseurs de contrainte in situ, et des gouttes de ferrofluide pilotées par un
  champ magnétique pour mesurer rigidité, temps de relaxation et plasticité des
  tissus embryonnaires.
---
<!-- SYNC: research/microrheometry.md -->

<a class="back-link" href="{{ '/fr/recherche/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Mesurer contraintes et rhéologie dans l'embryon</h1>

<div class="prose">
  <p class="lead">Les tissus embryonnaires se façonnent sous des forces qu'aucun instrument extérieur n'atteint. L'alternative consiste à placer une sonde déformable dans le tissu et à lire sa forme : une goutte liquide est la plus simple, rendue sphérique par sa propre tension et déformée par les contraintes du tissu qui l'entoure.</p>
</div>

<section class="section">
  <h2 class="section-title">Des gouttes qui se fonctionnalisent seules</h2>
  <div class="prose">
    <p class="status-label">{{ site.data.i18n[page.lang].published }}</p>
    <p>Nous avons conçu des gouttes d'huile qui se recouvrent elles-mêmes une fois injectées. Chaque goutte contient une émulsion inverse dont les gouttelettes internes, à mesure que l'émulsion se déstabilise, fusionnent avec la surface et y déposent des molécules d'accroche, ou libèrent localement leur contenu. Le choix des tensioactifs rend les gouttes assez molles pour se déformer sous les contraintes du tissu, sans perdre cette auto-fonctionnalisation. Étalonnées dans des gels de rigidité connue, elles ont été testées dans des organoïdes cérébraux humains et dans l'embryon de poisson-zèbre.</p>
    <p>Une goutte passive a une limite : elle ne sait pas mesurer la rigidité du tissu qui l'entoure.</p>

    <figure class="figure">
      {%- include picture.html name="stress-sensors" widths="400,800,1600" sizes="(max-width: 900px) 100vw, 840px" w=840 h=606 alt="Schéma de l'auto-fonctionnalisation : les gouttelettes d'eau internes fusionnent avec l'interface d'huile et y laissent des molécules d'accroche ; une goutte dans un embryon de poisson-zèbre près de la rétine, du cristallin et de la placode olfactive ; et un graphe de sa contrainte locale au cours du temps" -%}
      <figcaption>Auto-fonctionnalisation des gouttes, et une goutte dans un embryon de poisson-zèbre. D'après Vasiljevic, Harmand <em>et al.</em>, <em>EPJ E</em> 2026 (CC BY 4.0).</figcaption>
    </figure>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Gouttes de ferrofluide : du senseur au rhéomètre</h2>
  <div class="prose">
    <p class="status-label">{{ site.data.i18n[page.lang].ongoing }}</p>
    <p>Un champ magnétique peut en plus tirer sur une goutte de ferrofluide, ce qui transforme le senseur en rhéomètre. La méthode existe mais s'est peu diffusée, car elle demande un équipement dédié. Avec des collègues du Laboratoire Jean Perrin et de l'équipe de Marie-Anne Breau, je construis une version que tout laboratoire peut monter : un module amovible d'aimants permanents motorisés qui se pose sur un microscope standard, et des gouttes faites d'un ferrofluide commercial.</p>
    <p>Une même goutte lit alors la contrainte résiduelle, la rigidité, les temps de relaxation et la plasticité du tissu environnant. Dans l'embryon de poisson-zèbre, les premiers enregistrements distinguent déjà les tissus.</p>
  </div>
</section>

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
