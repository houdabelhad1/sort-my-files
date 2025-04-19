#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Erreur: Le dossier '$1' n'existe pas."
    exit 1
fi

cd "$1" || exit 1
echo "Succès : je suis maintenant dans le dossier $(pwd)"

for file in *; do
    # Ignorer les dossiers
    if [ -f "$file" ]; then
        # Obtenir l'extension du fichier
        extension="${file##*.}"
        
        # Cas particulier pour les fichiers sans extension
        if [ "$extension" = "$file" ]; then
            extension="no_extension"
        fi
        
        # Créer le dossier s'il n'existe pas
        if [ ! -d "$extension" ]; then
            mkdir "$extension"
        fi
        
        # Déplacer le fichier
        mv "$file" "$extension/"
    fi
done

echo "Organisation des fichiers terminée!"
