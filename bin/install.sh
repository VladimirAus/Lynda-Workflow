#!/bin/bash

npm install -g gulp
npm install -g browserify

sudo gem install sass
sudo gem install compass

mkdir bin
touch bin/install.sh
mkdir -p builds/development/js
mkdir -p builds/development/css
mkdir -p builds/development/images/artists
mkdir -p builds/development/images/artworks
mkdir -p builds/development/images/backgrounds
mkdir -p builds/development/images/misc
mkdir -p builds/development/images/socialmedia
mkdir -p builds/production
mkdir -p components/coffee
mkdir -p components/sass
mkdir -p components/scripts

npm init

# Getting JS, coffee files
wget https://gist.githubusercontent.com/planetoftheweb/cb52e7a8d833756fc9dd/raw/77667561f23847257d1fcafd7a5a4dc3ac5892d4/index.html --directory-prefix=builds/development
wget https://gist.githubusercontent.com/planetoftheweb/f03079bc7624c19ffda5/raw/57b9f50eab31ef3d45688131c58a2586d3acabac/tagline.coffee --directory-prefix=components/coffee
wget https://gist.githubusercontent.com/planetoftheweb/e992f987f2e9b18af1a4/raw/d8990967a4c92547d456a22417951a4d77c2efb2/pixgrid.js --directory-prefix=components/scripts
wget https://gist.githubusercontent.com/planetoftheweb/6ab7d8f8ac149b38b427/raw/e3bba7c4a45ef7855b229fb1bf98b5efbbd97daa/rclick.js --directory-prefix=components/scripts
wget https://gist.githubusercontent.com/planetoftheweb/d5e25dfa9d47d51f5273/raw/d993f7519fc12f69aca97970d2c60fb51873e067/template.js --directory-prefix=components/scripts
wget https://gist.githubusercontent.com/planetoftheweb/2c2f3b03b72a7f2ae923/raw/fb2dfe44c45ba188c1e38d38e4de8b0471ce6206/data.json --directory-prefix=builds/development/js

# Getting SASS files
# data at goo.gl/EjptRA
touch builds/development/style.scss
touch builds/development/_variables.scss
touch builds/development/_base.scss
touch builds/development/_modules.scss
touch builds/development/_pixgrid.scss
touch builds/development/_rclick.scss
# copy data

# touch css/style.css

# Git
touch .gitignore
echo ".DS_Store" >> .gitignore
echo "node_modules" >> .gitignore
echo ".tmp" >> .gitignore
echo ".sass-cache" >> .gitignore
echo "builds/**/images/*" >> .gitignore

git init
touch README.mkdir

#Gulp
npm install -g gulp
npm install --save-dev gulp
touch gulpfile.js
npm install --save-dev gulp-util

