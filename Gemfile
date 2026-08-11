source "https://rubygems.org"

gem "jekyll", "~> 4.4"
gem "webrick", "~> 1.9"

group :jekyll_plugins do
  # Uniquement des plugins de la whitelist GitHub Pages : si le workflow Actions
  # casse un jour, on peut basculer sur le build natif (Settings > Pages >
  # "Deploy from a branch") sans rien changer au code.
  gem "jekyll-seo-tag", "~> 2.8"
  gem "jekyll-sitemap", "~> 1.4"
end
