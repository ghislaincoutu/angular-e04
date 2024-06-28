#!/bin/bash
function apply_pause() {
  read -p "$*"
}
echo "Publication de l'applications sur le serveur Web local"
apply_pause "Appuyer sur la touche [Retour] pour continuer..."

# Source (so)
so=/home/Exercises/angular-e04/dist/angular-e04
# Destination (de)
de=/var/www/html/d002/angular-e04
rm -r $de/browser
rm -r $de/server
rm $de/*.*
cp -R $so/browser $de/browser
cp -R $so/server $de/server
cp $so/*.* $de/
sed -i 's/<base href="\/">/<base href="\/d002\/angular-e04\/browser\/">/g' $de/browser/index.html
