
#'bin/bash

#NOM : MARTINEZ Hugo 
#Date : 02/03/2018
#Env : Linux Debian 8
#Email : hugo.martinez@outlook.fr

#Creation du groupe Overwatch
groupadd Overwatch; echo "creation du groupe Overwatch"

#Creation des utilisateurs
useradd JackMorrison -m -d /home/JackMorrison/  -G Overwatch -s /bin/bash -p "P@ssword"; echo"creation de l'utilisateur JackMorrison"
useradd Tracer -m -d /home/Tracer/  -G Overwatch -s /bin/bash -p "P@ssword"; echo"creation de l'utilisateur Tracer"
useradd Fatale -m -d /home/LaGriffe/Fatale  -s /bin/bash -p "P@ssword"; echo"creation de l'utilisateur Fatale"

#Creation des dossiers
mkdir /home/LaGriffe/Script; echo"creation du dossier Script"
mkdir /home/LaGriffe/Gantelet_Infini; echo"creation du dossier Gantelet_Infini"
mkdir /home/info; echo"creation du dossier Info"

#Gestion des droits pour le fichier Gantelet_Infini
chmod 740 /home/LaGriffe/Gantelet_Infini; echo"droits affectés au fichier  Gantelet_Infini"

#Creation du fichier plan.txt
echo "Que Onda hahaha" > /home/LaGriffe/Gantelet_Infini/plan.txt; echo"cration du fichier.txt"

#Fatale la proprio
chown Fatale:Fatale /home/LaGriffe/Gantelet_Infini; echo"Fatale la proprio"

#Creation du blackwatch
echo"echo'un tir un mort'" > /home/LaGriffe/Gantelet_Infini/Script/blackwatch.sh; echo"creation de blackwatch.sh"

#Creation du Hey.sh 
echo"echo'Salut mon chou ! La cavalerie est arrivée \!'"> /home/Tracer/Hey.sh; echo"creation de hey.sh"

#Gestiondes droits pour Hey.sh
chmod 100 > /home/Tracer/Hey\!.sh; echo"gestion des droits pour hey"

#Gestion des droits pour le dossier Jack 
chmod 700 > /home/JackMorrison; echo"gestion des droits pour Jack"

#Gestion des droits pour le /home/info
chmod 550 > /home/info; echo"gestion des droits pour info"


