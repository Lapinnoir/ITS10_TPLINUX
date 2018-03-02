#####################################################################################################                                                                                                  #
#MASCOLO Nicola										           #
#02/03/2018                                                                                        #
#Ce script est fonctionnel sur Debian version 9.3.0                      			   ##n.mascolopro@gmail.com								               ##												   #
####################################################################################################

useradd Jack Morrison -m -s /bin/bash -p "`openssl passwd root`" && echo "création de Jack Morrison" #Créé l'utilisateur JackMorrison
useradd Tracer -m -s /bin/bash -p "`openssl passwd root`" && echo "création de Tracer" #Créé l'utilisateur Tracer

groupadd Overwatch && echo "création du groupe Overwatch" #Créé le groupe Overwatch

usermod -aG Overwatch JackMorrison && echo "Jack Morisson ajouté au groupe Overwatch" #ajoute Jack Morrison au groupe Overwatch
usermod -aG Overwatch Tracer && echo "Tracer ajoutée au groupe Overwatch" #ajoute Tracer au groupe Overwatch

cd /home/ 
mkdir LaGriffe/ && echo "création du dossier LaGriffe" #Créé dossier LaGriffe
cd LaGriffe/
mkdir Gantelet_Infini && echo "création du dossier Gantelet_Infini" #Créé dosser Gantelet_Infini

chown :Overwatch /home/LaGriffe/Gantelet_Infini/ #Donne accès au dossier Gantelet_Infini au groupe Overwatch 
chmod 740 /home/LaGriffe/Gantelet_Infini/ && echo "Le groupe Overwatch peut avoir accès en lecture aux dossiers LaGriffe et Gantelet_Infini" #Donne droit de lecture au groupe Overwatch

cd Gantelet_Infini
echo "Que Onda hahaha" > plan.txt && echo "création du fichier plan.txt" #Créé un fichier plan.txt et insère du contenu à l'intérieur
chown :Overwatch /home/LaGriffe/Gantelet_Infini/plan.txt #Donne accès au fichier plan.txt
chmod 740 /home/LaGriffe/Gantelet_Infini/plan.txt #Donne droit de lecture du fichier au groupe Overwatch

useradd -m -s /bin/bash -p "`openssl passwd root`" Fatale && echo "création de Fatale" #Créé l'utilisateur Fatale
chown Fatale /home/LaGriffe/Gantelet_Infini/ #Donne accès au dossier Gantelet_Infini à l'utilisateur Fatale

cd /home/LaGriffe/
mkdir Script #Créé un dossier Script
cd Script/
echo 'echo "Un tir, un mort."' > blackwatch.sh #Créé un script nommé Blackwatch, insère du contenu à l'intérieur et le redirige en echo

cd /home/Tracer/
echo 'echo "Salut mon chou ! La cavalerie est arrivée !"' > Hey\!.sh #Créé un script nommé Hey!, insère du contenu à l'intérieur et le redirige en echo

cd /home/JackMorrison/
chmod 770 ./ #Refuse tout accès aux utilisateurs à ce dossier, excepté root et JackMorrison 

cd /home/
mkdir info #Créé un dossier info
cd info/
chmod 775 ./ #Donne uniquement le droit aux autres utilisateurs de lire le dossier, root est le seulà avoir tous les droits

