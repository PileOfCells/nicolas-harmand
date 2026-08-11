# nicolasharmand.github.io — site académique

Site statique construit avec [Jekyll](https://jekyllrb.com/) et publié
automatiquement sur GitHub Pages à chaque push sur `main` :
<https://pileofcells.github.io/nicolas-harmand/>

Bilingue : anglais à la racine, français sous `/fr/`. Aucun JavaScript.

**Avant une modification de fond, lire `private/CHARTE.md`** : à quoi sert ce
site, sur quel ton il est écrit, ce qui a le droit d'y entrer et ce qui en a été
délibérément exclu. Ce README-ci ne couvre que les gestes courants.

Les notes de travail — charte éditoriale, fiche de référencement, sources du CV —
vivent dans un dépôt privé monté en `private/`, ignoré ici et exclu du site
publié.

---

## Ajouter une publication

Ouvrir `_data/publications.yml` dans GitHub (bouton crayon), ajouter un bloc
**en tête** de la liste `articles:`, valider. L'article apparaît aussitôt dans
les deux langues, sur la page de l'axe de recherche correspondant, dans les
données structurées et dans le sitemap.

```yaml
  - year: 2027
    title: "Titre exact de l'article"
    authors: "N. Harmand, A. Autre"        # « N. Harmand » est mis en gras automatiquement
    journal: "Nom du journal"
    ref: "12 (3), 456"                     # volume (numéro), page ou n° d'article
    doi: "10.1234/exemple"
    topic: microrheometry                  # microrheometry | epithelia | (vide)
    image: stress-sensors-sq               # facultatif, voir « Ajouter une image »
    image_alt:
      en: "Short description of the image"
      fr: "Courte description de l'image"
    highlight:                             # facultatif : mise en avant
      en: "Journal cover"
      fr: "Couverture du journal"
```

Les brevets vivent dans le même fichier, sous `patents:`.

## Ajouter une actualité

`_data/news.yml`. Les **trois plus récentes** s'affichent sur la page d'accueil.

```yaml
- date: 2027-03-01
  text:
    en: "What happened, in one sentence."
    fr: "Ce qui s'est passé, en une phrase."
  url: https://example.org           # facultatif
```

> Une rubrique d'actualités figée fait plus de mal que pas d'actualités du tout.
> Si elle n'est plus alimentée, videz `news.yml` : la section disparaît d'elle-même.

## Modifier un texte

Chaque page existe en deux exemplaires. **Modifier l'un, c'est devoir modifier
l'autre** — un commentaire `<!-- SYNC: ... -->` en tête de chaque page française
rappelle son homologue anglaise.

| Page | Anglais | Français |
|---|---|---|
| Accueil | `index.md` | `fr/index.md` |
| Recherche | `research.md` | `fr/recherche.md` |
| — Senseurs de force | `research/microrheometry.md` | `fr/recherche/microrheometrie.md` |
| — Épithéliums | `research/epithelia.md` | `fr/recherche/epitheliums.md` |
| Publications | `publications.md` | `fr/publications.md` |
| Galerie | `gallery.md` | `fr/galerie.md` |
| Enseignement & diffusion | `teaching.md` | `fr/enseignement.md` |
| Parcours & CV | `about.md` | `fr/parcours.md` |

Coordonnées, ORCID, Scholar et affiliation : `_data/identity.yml` (un seul
endroit, répercuté partout, y compris dans les données structurées).
Libellés du menu : `_data/nav.yml`.

## Ajouter une image

1. Déposer l'original (pleine résolution, déjà recadré) dans `_src/img/`.
2. Déclarer sa ligne dans `tools/optimize-images.sh`.
3. Lancer `./tools/optimize-images.sh` — génère les variantes AVIF + WebP dans `assets/img/`.
4. Committer `_src/img/` **et** `assets/img/`.

Puis dans une page :

```liquid
{% include picture.html name="mon-image" widths="400,800"
   sizes="(max-width: 900px) 100vw, 840px" w=840 h=560 alt="Description" %}
```

`_src/` est exclu du site publié : les originaux restent versionnés sans être
servis. **Pressé ?** Déposer un `.webp` de 1200 px maximum directement dans
`assets/img/` et utiliser une balise `<img>` classique, avec `width` et
`height` (obligatoires : ils évitent les sauts de mise en page).

## Prévisualiser en local

```bash
bundle install
./tools/serve.sh          # → http://127.0.0.1:4000/
./tools/serve.sh --port 4111
```

Le script applique `_config.dev.yml`, **indispensable** : la config de
production place le site sous `/nicolas-harmand/`, la config de développement le
sert à la racine. D'où le seul piège du dépôt : un `jekyll build` lancé sans
`_config.dev.yml` pendant qu'un serveur local tourne laisse un `_site` préfixé,
et chaque lien interne renvoie un 404 sur `/nicolas-harmand/…`. Ce n'est pas la
page qui est cassée — il suffit de relancer `./tools/serve.sh`.

## Si le déploiement casse

Le site est construit par GitHub Actions (`.github/workflows/deploy.yml`).
Si une action devient indisponible, le repli tient en un clic :
**Settings → Pages → Source → Deploy from a branch → `main` / (root)**.
Le site se reconstruit alors avec le Jekyll natif de GitHub Pages, à
l'identique — c'est pourquoi seuls des plugins de la liste blanche GitHub
(`jekyll-seo-tag`, `jekyll-sitemap`) sont utilisés.

## Être trouvé

Voir `private/REFERENCEMENT.md` : faire indexer le site, et surtout répercuter
son URL sur ORCID, Google Scholar, la page annuaire du LJP, HAL, ResearchGate,
LinkedIn et la signature de courriel. Un lien depuis `orcid.org` ou
`sorbonne-universite.fr` pèse plus lourd que n'importe quelle optimisation
interne.
