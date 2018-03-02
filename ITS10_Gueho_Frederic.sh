#gueho,frédéric
#02/03/2018
#Le script est fonctionnel sur Debian, Linux
#frederic.gueho@imie.fr

#on se place dans le dossier racine
cd / && echo "dossier racine"
#on ajoute l'utilisateur JackMorrison
useradd  -m -d /home/JackMorrison -s /bin/bash -p $(echo JackMorrison | openssl passwd -1 -stdin) JackMorrison && echo "utilisateur JackMorrison créer"

#on ajoute l'utilisateur Tracer
useradd  -m -d /home/Tracer -s /bin/bash -p $(echo Tracer | openssl passwd -1 -stdin) Tracer && echo "utilisateur Tracer créer"

#on creer l'uilisateur Fatale
useradd  -m -d /home/Fatale -s /bin/bash -p $(echo Fatale | openssl passwd -1 -stdin) Fatale && echo "utilisateur Fatale créer"
#on ajoute un groupe Overwatch
addgroup --force-badname Overwatch && echo "groupe overwatch créer"

#on ajoute les utilisateurs JackMorisson et Tracer au groupe Overwatch
usermod -aG Overwatch JackMorrison && echo "JackMorrison ajouté au groupe Overwatch"
usermod -aG Overwatch Tracer && echo "Tracer ajoutée au groupe Overwatch"

#on créer un dossier LaGriffe
mkdir /home/LaGriffe && echo "dossier LaGriffe créer"

#on créer un dossier Gantelet_Infini
mkdir /home/LaGriffe/Gantelet_Infini && echo "dossier Gantelet_Infini créer"

#on creer un fichier plan.txt avec du texte dedans
echo "Que Onda hahaha" > /home/LaGriffe/Gantelet_Infini/plan.txt && echo "fichier plan.txt créer"

#on change les propriétaires user et groupe pour le dossier Gantelet_Infini
chown Fatale /home/LaGriffe/Gantelet_Infini && echo "propriétaire Fatale pour Gantelet_Infini"
chown :Overwatch /home/LaGriffe/Gantelet_Infini && echo "groupe propriétaire Overwatch pour Gantelet_Infini"

#on change les droits du dossier Gantelet_Infini
chmod 740 /home/LaGriffe/Gantelet_Infini && echo "changements de droits du dossier Gantelet Infini"

#on creer le dossier Script dans le dossier LaGriffe
mkdir /home/LaGriffe/Script && echo "création de Script"

#on creer le script blackwatch.sh
echo " echo " un tir, un mort" " >> /home/LaGriffe/Script/blackwatch.sh && echo "creation du script blackwatch.sh"
bash /home/LaGriffe/Script/blackwatch.sh

#on change le propriétaire de Tracer
chown Tracer /home/Tracer && echo "Tracer propriétaire de Tracer"

#on créer le script Hey.sh sans ! ça ne fonctionne pas sinon
echo " echo " Salut mon chou ! La cavalerie est arrivée" " >> /home/Tracer/Hey\!.sh && echo "création du script Hey!.sh"
bash /home/Tracer/Hey\!.sh

#on nomme Tracer en propriétaire
chown Tracer /home/Tracer/Hey\!.sh && echo "Tracer propriétaire de Hey.sh"

#on donne les droits a Tracer d'executer Hey.sh
chmod 770 /home/Tracer/Hey\!.sh && echo "Tracer peut executer hey.sh"

#on lui change les droits pour que Tracer ne puisse pas accéder a Jack
chmod 700 /home/JackMorrison && echo "changements de droits, Tracer n'a plus accès a Jack"

#on repasse dans le /home de root
cd /home && echo "home de root"

#on creer le dossier info
mkdir info && echo "dossier info créer"

#puis on change les droits de ce dossier pour empécher Tracer d'écrire dedans
chmod 730 /home/info && echo "changements de droits pour info: Tracer ne peux plus écrire dedans"



