#Brohan Alexis
#02/03/18
#Script fonctionnel sur Linux
#alexisbrohan68@gmail.com

#Création des users
useradd JackMorrison -m -s /home/JackMorrison/bash -p "openssl passwd root" && echo "User JackMorrison crée"
useradd Tracer -m -s /home/Tracer/bash -p "openssl passwd root" && echo "User Tracer crée"
useradd Fatale -m -s /home/Fatale/bash -p "openssl passwd root" && echo "User Fatale crée"

#Création groupe
addgroup --force-badname Overwatch && echo "Groupe Overwatch crée"

#Ajout de Tracer et JackMorrison dans Overwatch
usermod -aG Overwatch JackMorrison && usermod -aG Overwatch Tracer && echo "Tracer et JackMorrison ajoutés au groupe Overwatch"

#Création rep LaGriffe/Gantelet_Infini avec plan.txt et /Script/blackwatch.sh
mkdir -p /home/LaGriffe/Gantelet_Infini && echo "Répertoire LaGriffe/Gantelet_Infini crée"
cd /home/LaGriffe/Gantelet_Infini
touch plan.txt && echo "Plan.txt crée avec succès"
cd ..
chown -R Fatale:Overwatch /home/LaGriffe/Gantelet_Infini
chmod 751 /home/LaGriffe/Gantelet_Infini
cd Gantelet_Infini
chmod 751 plan.txt
echo "Que Onda hahaha" > plan.txt && echo "Que Onda hahaha ajouté à plan.txt"
cd ..
mkdir Script
cd Script
touch blackwatch.sh && echo "blackwatch.sh crée avec succès"
echo "un tir, un mort" > blackwatch.sh && echo "un tir, un mort"
chown Fatale blackwatch.sh
chmod 711 blackwatch.sh
cd ..
chown Fatale Script
chmod 700 Script

#Création Hey!.sh
cd /home/Tracer
touch Hey!.sh && echo "Hey!.sh crée avec succès"
echo "Salut mon choux ! La cavalerie est arrivée !" > Hey!.sh && echo "Insertion dans Hey!.sh réalisée avec succès"
chown Tracer:Overwatch Hey!.sh
chmod 500 Hey!.sh

#Accès de Tracer au dossier JackMorrison bloqué
chown JackMorrison:Overwatch /home/JackMorrison
chmod 700 /home/JackMorrison

#Création home/info et bloquage de Tracer
mkdir /home/info && echo "Répertoire /home/info crée avec succès"
chown :Overwatch /home/info
chmod 751 /home/info
