# Guide de Déploiement sur GitHub Pages

Ce guide vous explique étape par étape comment mettre votre site web en ligne gratuitement à l'aide de **GitHub Pages**.

## Étape 1 : Préparer vos fichiers en local

1. Assurez-vous que vos fichiers `index.html` et `style.css` sont bien dans votre dossier de travail.
2. **Ajoutez votre CV** : Renommez votre fichier de CV au format PDF en **`cv.pdf`** et placez-le dans ce même dossier. (Le site web possède déjà un lien configuré pour chercher ce fichier `cv.pdf` à la racine).

---

## Étape 2 : Créer le dépôt sur GitHub

1. Connectez-vous sur votre compte [GitHub](https://github.com).
2. En haut à droite, cliquez sur le bouton **`+`** puis sur **New repository** (Nouveau dépôt).
3. **Nom du dépôt (Repository name)** :
   * Si vous voulez que votre site soit accessible directement à l'adresse principale (ex: `https://votre-pseudo.github.io`), nommez votre dépôt exactement :
     **`votre-pseudo.github.io`** (remplacez `votre-pseudo` par votre nom d'utilisateur GitHub exact).
   * Si vous préférez lui donner un autre nom (ex: `site-web`), l'adresse finale sera `https://votre-pseudo.github.io/site-web/`.
4. Laissez le dépôt en mode **Public** (indispensable pour utiliser GitHub Pages gratuitement).
5. **Ne cochez pas** "Add a README file" ou d'autres options d'initialisation.
6. Cliquez sur le bouton vert **Create repository**.

---

## Étape 3 : Envoyer les fichiers sur GitHub

Si vous n'avez pas installé `git` en ligne de commande ou si vous préférez une interface simple, vous pouvez faire le dépôt directement depuis votre navigateur :

1. Sur la page de votre nouveau dépôt vide, repérez la phrase : *"Get started by creating a new file or uploading an existing file"*.
2. Cliquez sur le lien **`uploading an existing file`** (importer un fichier existant).
3. Glissez-déposez les fichiers suivants dans la zone :
   * `index.html`
   * `style.css`
   * `cv.pdf` (votre CV)
4. En bas de page, dans la section "Commit changes", cliquez sur le bouton vert **Commit changes**. Vos fichiers sont maintenant sur GitHub !

*Note : Si vous préférez le faire en ligne de commande (terminal) :*
```bash
git init
git add index.html style.css cv.pdf
git commit -m "Premier import de mon site"
git branch -M main
git remote add origin https://github.com/votre-pseudo/votre-pseudo.github.io.git
git push -u origin main
```

---

## Étape 4 : Activer GitHub Pages

Si vous avez nommé votre dépôt `votre-pseudo.github.io`, le site s'active souvent automatiquement. Pour vous en assurer :

1. Sur la page de votre dépôt sur GitHub, cliquez sur l'onglet **Settings** (Paramètres, icône d'engrenage en haut à droite).
2. Dans le menu de gauche, cliquez sur la section **Pages**.
3. Dans la section **Build and deployment** :
   * **Source** : Laissez "Deploy from a branch".
   * **Branch** : Cliquez sur le menu déroulant qui indique *None*, choisissez **`main`** (ou `master`), puis laissez le dossier à **`/ (root)`**.
   * Cliquez sur **Save**.
4. Patientez environ 1 à 2 minutes. Actualisez la page.
5. Un encadré vert apparaîtra en haut de la page des paramètres avec votre lien en ligne : *"Your site is live at..."*. Cliquez dessus pour voir votre site en ligne !

---

## Étape 5 : Mettre à jour votre site dans le futur

Lorsque vous aurez une nouvelle publication ou que vous voudrez modifier du texte :
1. Modifiez simplement le fichier `index.html` sur votre ordinateur.
2. Retournez sur votre dépôt GitHub.
3. Cliquez sur **Add file** > **Upload files** et déposez la nouvelle version de `index.html`.
4. Cliquez sur **Commit changes**. Le site se mettra à jour en ligne automatiquement en quelques secondes !

### Astuce importante contre le cache navigateur :
* **Si vous modifiez le fichier `style.css`** : Les navigateurs des personnes ayant déjà visité votre site ont tendance à garder en mémoire l'ancienne feuille de style. Pour les forcer à télécharger la nouvelle version immédiatement sans vider leur cache, ouvrez `index.html`, trouvez la ligne de chargement du CSS :
  `<link rel="stylesheet" href="style.css?v=1.0.0">`
  Et modifiez simplement le numéro de version (par exemple en écrivant `?v=1.0.1` ou `?v=20260702` avec la date du jour). Importez ensuite les versions modifiées d'`index.html` et `style.css` sur GitHub.
