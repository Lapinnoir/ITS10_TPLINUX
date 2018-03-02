#!/bin/bash

echo "Créée par :"
echo "GAZAUBE François"
echo "le 02/03/2018 "

echo "______________________________"

#Commande qui permet de créer de nouveaus utilisateur avec un fichier hom et bash et mot de passe chiffré grâce à openssl
#adduser --force-badname JimMorrison
useradd JimMorrison -m -s /bin/bash -p "`openssl passwd root`"
#adduser --force-badname Tracer
useradd Tracer -m -s /bin/bash -p "`openssl passwd root`"
#adduser --force-badname Fatale
useradd Fatale  -m -s /bin/bash -p "`openssl passwd root`"
echo "Création des utilisateurs"

#Commande permettant de créer le groupe Overwatch
groupadd  Overwatch  
echo "Création du groupe Overwatch"

#Ajout des utilisateurs dans le groupe Overwatch
usermod -aG Overwatch JimMorrison
usermod -aG Overwatch Tracer
echo "Ajout de JimMorrison et de Tracer dans le groupe Overwatch"


echo "Création du répertoire LaGriffe et Gentelet_infini"
#Création du fichier LaGriffe et Gentelet_Infini ensuite on fait le chemin pour aller dans le dossier et on créer un fichier plan.txt et on écrit quelque de chose dedans
#Ensuite avec Tail on affiche la fin du fichier ce qui perlet d'afficher la phrase à écrite dans le fichier.txt
mkdir -p /home/LaGriffe/Gentelet_Infini && cd /home/LaGriffe/Gentelet_Infini && echo "Que Onda hahaha" > plan.txt && tail /home/LaGriffe/Gentelet_Infini/plan.txt

#Fatale passe propriétraire du fichier LaGriffe et pareil pour le groupe Overwatch
#Ensuite je modifie les permissions avec -R qui permet de l'appliquer à tous les fichiers dans le répertoire
#740 : Le groupe peut que lire les données et le propriétaire peut tout faire
chown Fatale:Overwatch /home/LaGriffe && chmod -R 740 /home/LaGriffe 

echo "Création du fichier Blakcwatch"
#Créer un répertoire Script dans le répertoire LaGriffe/Gentelet_Infini
#Ensuite je vais dans le dossier le script et je créer un fichier blackwatch.txt et j'écris quelque chose dedans
#Ensuite j'affiche ce qu'il y a écrit de ce fichier comme plus haut
mkdir -p /home/LaGriffe/Gentelet_Infini/Script && cd /home/LaGriffe/Gentelet_Infini/Script && echo "Un tir, un mort." > blackwatch.txt && tail /home/LaGriffe/Gentelet_Infini/Script/blackwatch.txt  

#Fatale devient propriétaire de blackwatch.txt
chown Fatale /home/LaGriffe/Gentelet_Infini/Script/blackwatch.txt

echo "Création du fichier Hey!"
#Je vais dans le dossier de Tracer et je créer un fichiern Hey!.txt et j'écris quelque chose dedans
#Et j'affich ce qu'il y d'écrit 
cd /home/Tracer && echo "Salut mon chou ! La cavalarie est arrivé" > Hey\!.txt! && tail /home/Tracer/Hey\!.txt! 

#JimMorrison et le group Overwatch devient propriétaire de JimMorrison
#740 :Le propriétaire peut peut tout faire ce le dossier et le groupe peut juste lire les données
chown JimMorrison:Overwatch /home/JimMorrison && chmod -R 740 /home/JimMorrison 

#Personne d'autre que JimMorrison à accés au fichiers
chmod -R 700 /home/JimMorrison 

echo "Création du fichier info"
#Création du répertoire info dans le home
mkdir -p /home/info

#Tracer devient propriétaire de répertoire
#700 : Je lui interdit l'accèes à ce dossier
chown Tracer /home/info && chmod -R 700  /home/info

echo "Script terminé"

#FIN
