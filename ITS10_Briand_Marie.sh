#!/bin/sh
#Création de : Briand Marie
#Date : 02/03/2018
#Environnement : Linux - Debian 9.1.0
#Mail : marie.briand@imie.fr



# Direction vers la Racine
cd / ; echo "Direction vers la Racine"

# Ajout du groupe Overwatch
groupadd Overwatch ; echo "Ajout du groupe Overwatch"

# Ajout User Tracer
useradd -g Overwatch -m -d /home/Tracer -s /bin/bash -p $(echo tracer | openssl passwd -1 -stdin) Tracer ; echo "Ajout du User Tracer"

# Ajout User JackMorrison 
useradd -u -g Overwatch -m -d /home/JackMorrison -s /bin/bash -p $(echo jackmorrison | openssl passwd -1 -stdin) JackMorrison ; echo "Ajout du User JackMorrison"

# Ajout User Fatale 
useradd -m -d /home/Fatale -s /bin/bash -p $(echo fatale | openssl passwd -1 -stdin) Fatale ; echo "Ajout du User Fatale"

# Direction vers les différents chemins pour la création des directory
cd /home ; mkdir LaGriffe ; cd LaGriffe ; mkdir Gantelet_Infini ; cd Gantelet_Infini : echo "Direction vers les différents chemins pour la création des directory"

# Création du fichier txt : plan.txt et son echo
touch plan.txt ; echo "Que Onda hahaha" > plan.txt ; echo "Création du fichier txt et son echo"

# Création des droits User et Group
cd .. ; chown Fatale:Overwatch Gantelet_Infini ; echo "Création des droits de User et Group"

# Création des droits de lecture pour le Groupe Overwatch et aucun droit pour les autres
chmod 740 Gantelet_Infini ; echo "Création des droits de lecture pour le groupe Overwatch et aucun droit pour les autres"

# Ajout d'un script pour Fatale (Propriétaire)
mkdir Script ; cd Script ; touch blackwatch.sh ; echo "un tir, un mort." > blackwatch.sh ; echo "Ajout d'un script pour Fatale"

# Création de droit pour le fichier blackwatch.sh à Fatale
chown Fatale blackwatch.sh ; chmod 744 blackwatch.sh ; echo "Création de droit pour le fichier de Fatale blackwatch.sh"

# Direction vers le dossier Tracer et Ajout du Script "Hey!" et son echo
cd ../../ ; cd Tracer ; touch Hey\!.sh ; echo "Salut mon chou ! La cavalerie est arrivée !" > Hey\!.sh ; echo "Direction vers Tracer et Création du script Hey! et son echo"

# Changement des droits pour Tracer pour son script
chown Tracer Hey\!.sh ; chmod 700 Hey\!.sh ; echo "Changement des droits Tracer pour son Script"

# Droits de JackMorrison Exclusif à lui-même 
cd .. ; cd JackMorrison ; chmod 700 .bash_logout ; chmod 700 .bashrc ; chmod 700 .profile ; echo "Droits de JackMorrison Exclusif à lui-même"

# Droits de Tracer Exclusif à lui-même
cd .. ; cd Tracer ; chmod 700 .bash_logout ; chmod 700 .bashrc ; chmod 700 .profile ; echo "Droits de Tracer Exclusif à lui-même"

# Droits de Fatale Exclusif à lui-même
cd .. ; cd Fatale ; chmod 700 .bash_logout ; chmod 700 .bashrc ; chmod 700 .profile ; echo "Droits de Fatale Exclusif à lui-même"

# Création du répértoire /home/info
cd .. ; mkdir info ; cd info ; echo "Création du répértoire /home/info"

# Changement des droits pour le répértoire 'info'
cd .. ; chmod 744 info ; echo "Changement des droits pour le répértoire info"




##########       FIN      ##########
