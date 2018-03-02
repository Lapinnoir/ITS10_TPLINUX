#######################################################
# NICOLAS Maxime                                      #
# 02/03/2018                                          #
# Debian linux 8                                      #
# maxime.nicolas@imie.fr / nicolas.maxime98@gmail.com #
#######################################################

# Création des users
	# Renvoi de confirmation avec un echo

useradd Tracer -m -s /bin/bash -p "`openssl passwd root`" && echo" Création du user: Tracer "
useradd JackMorrison -m -s /bin/bash -p "`openssl paswd root`"&& echo" Création du user: JackMorrison "
useradd Fatale -m -s /bin/bash -p "`openssl passwd root`" && echo" Création du user: Fatale "

# Création du groupe

groupadd Overwatch && echo" Esquad Overwatch en place "

# Ajout des users dans le groupe

usermod -aG Overwatch Tracer && echo" Tracer à rejoind Overwatch "
usermod -aG Overwatch JackMorrison && echo"JackMorrison à rejoind Overwatch "

# Process de création /home/LaGriffe/Gantelet_infini
# Insertion d'un fichier sh 'plan' dans le dossier Gantelet_infini
# Ecriture d'une phrase dans ce fichier

cd /home
mkdir LaGriffe && echo" Le dossier LaGriffe à été créé "
cd /LaGriffe
mkdir Gantelet_infini && echo" Le dossier Gantelet_infini à été créé "
cd /Gantelet_infini
touch plan.sh && echo" Le fichier d'écriture à été créé "
echo" Que Onda hahaha ! " > plan.sh

# Process de création /home/LaGriffe/Script
# Insertion d'un fichier sh 'blackwatch' dans le dossier Script
# Ecriture d'une phrase dans le fichier

cd ../
mkdir Script && echo" Le dossier Script à été créé "
cd /Script
touch blackwatch.sh && echo" Le fichier d'écriture à été créé " 
echo" Un tir , Un mort " > blackwatch.sh

# Process de création /home/Tracer
# Insertion d'un fichier sh 'Hey!' dans le dossier Tracer
# Ecriture d'une phrase dans le fichier

cd ../
cd /Tracer
touch hey\!.sh && echo" Le fichier d'écriture à été créé "
echo" Salut mon chou ! La cavalerie est arrivé "

# Process de création /home/info

cd ../
mkdir info && echo" Le dossier info à été créé "

###############################################

# Changement des droits pour le user Fatale

chown Fatale /home/ITS10_Nicolas_Maxime.sh
chmod 155 /home/ITS10_Nicolas_Maxime.sh && echo" Changement des droit effectués "

# Attribution des droits user:Fatale pour le dossier Gantelet_infini

chown Fatale /home/LaGriffe/Gantelet_infini
chmod 740 /home/LaGriffe/Gantelet_infini && echo" Droit attribués "

# Attribution des droit group:Overwatch pour le dossier Gantelet_infini

chown :Overwatch /home/LaGriffe/Gantelet_infini
chmod 740 /home/LaGriffe/Gantelet_infini && echo" Le groupe Overwatch à accès en lecture du fichier Gantelet_infini"

# Attribution des droits ALL pour le dossier info

chmod 775 /home/info && echo" Donne uniquement le droit aux users la lecture"

# Attribution des droits ALL pour le dossier JackMorrison

chmod 770 /hom/JackMorrison && echo" Donne uniquement le droit d'accès aux user:root et user:JackMorrison"

