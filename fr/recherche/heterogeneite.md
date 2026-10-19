---
ref: heterogeneity
parent: research
lang: fr
permalink: /fr/recherche/heterogeneite/
title: Tissus hétérogènes en écoulement
description: >-
  Projet de recherche : comment hétérogénéité cellulaire et rhéologie
  tissulaire se façonnent mutuellement, mesuré sans postuler de loi de
  comportement.
---
<!-- SYNC: research/heterogeneity.md -->

<a class="back-link" href="{{ '/fr/recherche/' | relative_url }}">← {{ site.data.i18n[page.lang].back_to_research }}</a>

<h1>Tissus hétérogènes en écoulement</h1>

<div class="prose">
  <p class="question">Comment l'hétérogénéité cellulaire et la mécanique tissulaire s'influencent-elles mutuellement ?</p>
  <p class="lead">Les tissus sont rarement faits de cellules identiques, dans un embryon comme dans une tumeur en croissance, et leur devenir dépend de la manière dont un tissu mélangé se déforme et s'écoule. Un tissu composé de deux populations se comporte-t-il comme la moyenne de ses constituants ? Et des écoulements imposés peuvent-ils provoquer la ségrégation ou le mélange de ces populations ?</p>
</div>

<section class="section">
  <h2 class="section-title">Lire la mécanique sans postuler de loi de comportement</h2>
  <div class="prose">
    <p>L'analyse est volontairement agnostique vis-à-vis des modèles : elle extrait des images une information rhéologique avant de choisir la moindre loi de comportement.</p>
    <ul class="bullet-list">
      <li><strong>Inférence de forces.</strong> Les tensions relatives des jonctions sont lues dans les angles sous lesquels les arêtes cellulaires se rejoignent, avec les outils que j'ai développés pendant ma thèse. Leur distribution quantifie l'hétérogénéité des tensions à un instant donné.</li>
      <li><strong>Déformations contre réarrangements.</strong> La déformation du tissu est décomposée en changements de forme des cellules et en échanges de voisins, comme pour les mousses liquides et, au Laboratoire Jean Perrin, pour les émulsions biomimétiques adhésives. La part irréversible portée par les réarrangements est en soi une mesure rhéologique.</li>
      <li><strong>Actif contre passif.</strong> Le cadre de thermodynamique stochastique de J. O'Byrne sépare, dans une dynamique, ce qui relaxe vers l'équilibre de ce qui brise la symétrie par renversement du temps : ce qui, dans l'écoulement d'un tissu, est irréductiblement actif.</li>
    </ul>

    <figure class="figure figure--narrow">
      {%- include picture.html name="force-inference" widths="400,800,1200" sizes="(max-width: 900px) 100vw, 560px" w=560 h=538 alt="Réseau des jonctions cellulaires d'une monocouche épithéliale, chaque jonction colorée selon sa tension inférée, du rouge sombre pour les faibles au blanc pour les fortes" -%}
      <figcaption>Inférence de forces sur une monocouche MDCK : chaque jonction est colorée selon sa tension rapportée à la moyenne, du rouge sombre (faible) au blanc (forte). Issue de ma thèse (2019).</figcaption>
    </figure>
  </div>
</section>

<section class="section">
  <h2 class="section-title">Trois questions</h2>
  <div class="prose">
    <ol class="question-list">
      <li>Quand un épithélium s'écoule, quelle part de l'écoulement vient de la déformation des cellules, quelle part des échanges de voisins, et quelle part est irréductiblement active ?</li>
      <li>Quand on mélange deux populations cellulaires d'adhésion différente, la rhéologie du mélange est-elle la moyenne de celle de ses constituants ?</li>
      <li>Les relations établies en deux dimensions tiennent-elles en trois, là où des gouttes de ferrofluide peuvent mesurer localement la rhéologie ?</li>
    </ol>
    <p>Le projet s'appuie sur le reste de mon travail : l'inférence de forces vient de ma thèse sur la <a href="{{ '/fr/recherche/epitheliums/' | relative_url }}">forme des épithéliums</a>, les gouttes de ferrofluide de mon travail sur les <a href="{{ '/fr/recherche/microrheometrie/' | relative_url }}">contraintes dans l'embryon</a>.</p>
  </div>
</section>

<section class="section">
  <h2 class="section-title">{{ site.data.i18n[page.lang].collaborations }}</h2>
  <ul class="bullet-list">
    {%- for c in site.data.people.heterogeneity %}
    <li><strong>{{ c.group[page.lang] }} :</strong> {{ c.people }}</li>
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
