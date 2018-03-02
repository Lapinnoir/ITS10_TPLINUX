# ______________________________________
#|										|
#|          Briteau Clémence			|
#| 		Script crée le 02/03/2018		|
#|  	Environnement : Debian 8		|
#|   Mail : clemence.briteau@imie.fr	|
#|______________________________________|
#


# Se placer à la racine
cd ~

# Créer des utilisateurs
useradd JimMorrison -m -s /bin/bash -p "`openssl passwd root`" && echo "Utilisateur JimMorrison créé"
useradd Tracer -m -s /bin/bash -p "`openssl passwd root`" && echo "Utilisateur Tracer créé"
useradd Fatale -m -s /bin/bash -p "`openssl passwd root`" && echo "Utilisateur Fatale créé"

# Créer un groupe
groupadd Overwatch && echo "Groupe Overwatch créé"

# Mettre les utilisateurs dans le groupe
usermod -aG Overwatch JimMorrison && echo "Utilisateur JimMorrison ajouté au groupe Overwatch"
usermod -aG Overwatch Tracer && echo "Utilisateur Tracer ajouté au groupe Overwatch"

# Créer les répertoires et le plan
mkdir -p LaGriffe/Gantelet_Infini 
cd LaGriffe/Gantelet_Infini
touch plan.txt
echo "Que Onda hahaha" >> plan.txt

# Gestion des droits : Fatale propriétaire, Groupe Overwatch accès en lecture
chown Fatale:Fatale /home/LaGriffe/Gantelet_Infini && echo "Fatale propriétaire de /home/LaGriffe/Gantelet_Infini"
chmod 740 /home/LaGriffe/Gantelet_Infini && echo "Groupe Overwatch a accès en lecture à /home/LaGriffe/Gantelet_Infini"

# Script blackwatch
cd ~
mkdir /home/LaGriffe/Script 
cd /home/LaGriffe/Script
echo "echo "un tir, un mort"" >> blackwatch.sh
chown Fatale:Fatale /home/LaGriffe/Script

# Scritp Hey! 
cd ~
cd /home/Tracer/
echo "echo "Salut mon chou \! La cavalerie est arrivée \!" " >> Hey\!.sh

# Gestion accès de Tracer au dossier personnel de JimMorrison
cd ~
chmod 770 /home/JimMorrison 

# Créer le répertoire /home/info
mkdir /home/info && echo "Répertoire /home/info créé"

# Gestion accès de Tracer dans /home/info
chmod 775 /home/info

