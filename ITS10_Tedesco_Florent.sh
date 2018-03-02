# _____________________________________
#|                                     |
#|   Script créé par Florent Tedesco   |
#|   Le 02/03/2018                     |
#|   Debian 9.3.0                      |
#|   florent.tedesco@imie.fr           |
#|_____________________________________|

#On crée un utilisateur, on lui crée son home, son bash et on lui attribut un mot de passe chiffré
useradd Tracer -m -s /bin/bash -p "`openssl passwd coucouFX`" && echo "Enchanté Tracer"
useradd JackMorrison -m -s /bin/bash -p "`openssl passwd çava?`" && echo "Enchanté Soldat76"

#On crée un groupe
groupadd Overwatch && echo "Création du groupe Overwatch"

#On attribut un utilisateur dans un groupe
usermod -aG Overwatch Tracer && echo "Tracer, bienvenue dans le groupe Overwatch"
usermod -aG Overwatch JackMorrison && echo "JackMorrison, bienvenue dans le groupe Overwatch"

#On crée le dossier LaGriffe
mkdir /home/LaGriffe && echo "Dossier home/LaGriffe créé"

#On crée le dossier Gantelet_Infini qui se trouve dans LaGriffe
mkdir /home/LaGriffe/Gantelet_Infini && echo "Dossier home/LaGriffe/Gantelet_Infini créé"

#Les utilisateurs du groupe Overwatch ont accès en lecture aux données du dossier Gantelet_Infini
chmod 740 /home/LaGriffe/Gantelet_Infini && echo "Droit d'accès modifiés"

#On insère du texte dans un fichier plan.txt
echo "Que Onda hahaha" > /home/LaGriffe/Gantelet_Infini/plan.txt && echo "Le fichier plan.txt a été créé et du texte y a été inséré"

#Overwatch devient propriétaire du dossier Gantelet_Infini ainsi que de son contenu
chown -R :Overwatch /home/LaGriffe/Gantelet_Infini && echo "Le groupe Overwatch est désormais propriétaire du dossier /home/LaGriffe/Gantelet_Infini"

#Fatale est créée de la même manière que Tracer et JackMorrison
useradd Fatale -m -s /bin/bash -p "`openssl passwd moiçava`" && echo "Enchanté Fatale"

#Fatale devient propriétaire du dossier Gantelet_Infini
chown Fatale /home/LaGriffe/Gantelet_Infini && echo "Fatale est désormais propriétaire du dossier /home/LaGriffe/Gantelet_Infini"

#On créé le dossier Script
mkdir /home/LaGriffe/Script && echo "Dossier /home/LaGriffe/Script créé"

#On créé un script qui permet d'afficher une phrase en l'executant
echo "echo 'Un tir, un mort'" > /home/LaGriffe/Script/blackwatch.sh && echo "Voici votre script Fatale, amusez vous bien"

#On créé un script qui permet d'afficher une phrase en l'executant, ce script étant contenu dans le dossier personnel de Tracer
echo "echo 'Salut mon chou ! La cavalerie est arrivée'" > /home/Tracer/Hey\!.sh && echo "Voici votre script Tracer, amusez vous bien"

#On change les droits d'accès pour que Tracer n'ai plus accès au dossier personnel de JackMorrison
chmod 770 /home/JackMorrison && echo "Dommage, tu n'as pas accès au dossier de JackMorrison"

#On créé le dossier info
mkdir /home/info && echo "Dossier /home/info créé"

#Tracer ne peut plus écrire dans le dossier info
chmod 775 /home/info && echo "Dommage, tu ne peux pas écrire dans ce dossier"
