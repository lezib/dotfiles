#!/bin/bash

# Vérifier si le dossier existe
dossier="/home/maurin/Pictures/ducks"
if [ ! -d "$dossier" ]; then
    echo "Le dossier spécifié n'existe pas."
    exit 1
fi

# Vérifier si des fichiers correspondants existent
fichiers=$(find "$dossier" -type f \( -iname "*.png" -o -iname "*.jpeg" -o -iname "*.jpg" \))

if [ -z "$fichiers" ]; then
    echo "Aucun fichier correspondant trouvé."
    exit 1
fi

# Sélectionner un fichier aléatoire
duck=$(echo "$fichiers" | shuf -n 1)

# Afficher le nom du fichier sélectionné
#$HOME/.config/hypr/wallpaper/reload.sh $wallpaper
fastfetch --logo $duck --logo-width 40 --logo-height 20
