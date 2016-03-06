#! /bin/sh
# expects GH_REF github.com/username/repo
# expects GH_TOKEN

cd _build
git init

git config user.name "Travis CI"
git config user.email "<your@email.com>"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages