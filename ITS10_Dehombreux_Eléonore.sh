
#   ______ _                             _   _     
#  |  ____| |                           | | | |    
#  | |__  | | ___  ___  _ __   ___  _ __| |_| |__  
#  |  __| | |/ _ \/ _ \| *_ \ / _ \| *__| __| *_ \ 
#  | |____| |  __/ (_) | | | | (_) | |  | |_| | | |
#  |______|_|\___|\___/|_| |_|\___/|_|   \__|_| |_|
                                                 
                                                 

# **********************************************
# ************ Eleonore Dehombreux *************
# *************** 02 mars 2018 *****************
# ********* Environnement : Debian 8 *********** 
# ********* eleonore.dehombreux@imie.fr ********
# **********************************************




# Placement à la racine 

cd ~ && echo "Ouverture du dossier racine"

# Création des utilisateurs 


useradd JackMorisson -m -s /bin/bash -p "`openssl passwd root`" && echo " Utilisateur JackMorisson créé ! "
useradd Tracer -m -s /bin/bash -p "`openssl passwd root`" && echo " Utilisateur Tracer créé ! "
useradd Fatale -m  -s /bin/bash -p "`openssl passwd root`" && echo " Utilisateur Fatale créé ! "



# Création du groupe et ajout des utilisateurs 

groupadd Overwatch && usermod -aG Overwatch JackMorisson && usermod -aG Overwatch Tracer && echo "JackMorisson et Tracer ont été ajoutés au nouveau groupe Overwatch !"


# Changement des droits sur le script 

chown Fatale /home/ITS10_Dehombreux_Eléonore.sh
chmod 155 /home/ITS10_Dehombreux_Eléonore.sh && echo " Les accès au script Dehombreux_Eléonore.sh ont été modifiés."



#Création des répertoires et des fichiers

cd /home && mkdir -p Lagriffe/Gantelet_Infini && echo "Création du dossier Lagriffe/Gantelet_Infini"
cd Lagriffe && mkdir Script && echo " Creation du dossier Lagriffe/Script"
cd .. && mkdir info && echo "Creation du dossier /home/info"
 


# Attribution des droits utilisateurs de Fatale 

chown Fatale:Overwatch /home/Lagriffe/Gantelet_Infini && chmod 740 /home/Lagriffe/Gantelet_Infini && echo "Fatale peut gérer le dossier home/Lagriffe/Gantelet_Infini. 
Le groupe Overwatch peut lire le dossier."
 


# Création du plan.txt
cd Lagriffe/Gantelet_Infini && echo "Que Onda hahaha" >> plan.txt && echo " Le fichier plan.txt a bien été créé !"


# Création du Script de Fatale
chown Fatale ../Script && chmod 211 ../Script && cd ../Script
echo " echo " Un tir, un mort" " >> blackwatch.sh && echo " Fatale a créé un script. Exécution du script : "
bash blackwatch.sh



# Script de Tracer
cd ../../ Tracer && echo " echo "Salut mon chou ! La cavalerie est arrivée! " " >> Hey\!.sh
chown Tracer Hey\!.sh && chmod 177 Hey\!.sh && echo " Tracer a créé un script. Exécution du script : " 
bash Hey\!.sh 


# Empêcher Tracer d'avoir accès au dossier de JackMorisson
cd .. && chmod 770 /home/JackMorisson && echo " Tracer n'a plus accès au dossier de JackMorisson"


# Empêcher Tracer d'écrire dans /home/info 
chmod 775 /home/info && echo " Tracer ne peut plus écrire dans /home/info"




