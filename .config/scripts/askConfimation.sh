#!/bin/bash

# Fonction pour demander une confirmation
ask_confirmation() {
    local question="$1"
    while true; do
        read -p "$question [y/n] " yn
        case $yn in
            [Yy]* ) echo "Vous avez confirmé."; return 0;;
            [Nn]* ) echo "Vous avez annulé."; return 1;;
            * ) echo "Veuillez répondre par y ou n.";;
        esac
    done
}

# Vérifier si une question est passée en argument
if [ -z "$1" ]; then
    echo "Erreur : Aucun argument fourni pour la question."
    exit 1
fi

# Appel de la fonction de confirmation avec la question passée en argument
if ask_confirmation "$1"; then
    echo "Action confirmée."
    # Placez ici le code que vous souhaitez exécuter après confirmation
else
    echo "Action annulée."
    # Placez ici le code à exécuter en cas d'annulation
fi

