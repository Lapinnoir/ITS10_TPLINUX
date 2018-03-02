#############################
#  MERLE Yao                #
#  02 mars 2018             #
#  Débian 9.1.0             #
#  yao.merle@imie.fr        #
#############################


#creation d'utilisateur avec mots de passe crypté

useradd  --force -badname JackMorrison -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur crée"
useradd  --force -badname Tracer -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur crée"
useradd  --force -badname Fatale -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur crée"

#creation de groupe

groupadd Overwatch && echo "groupe crée"

#ajout des utilisateurs au groupe

usermod -aG Overwatch JackMorrison && echo "utilisateur ajouté au groupe"
useradd -aG Overwatch Tracer && echo "utilisateur ajouté au groupe"
useradd -aG Overwatch Fatale && echo "utilisateur ajouté au groupe"

#creation de fichier

mkdir /home/LaGriffe/Gantelet_Infini && echo 'Que Onda hahaha'

#attribution des droits sur le fichier aux utilisateurs

chown JackMorrison /home/LaGriffe/Gantelet_Infini && echo "repertoire utilisateur"
chown JackMorrison /home/LaGriffe/Gantelet_Infini && echo "repertoire utilisateur"
chown Fatale:Overwatch /home/LaGriffe/Gantelet_Infini && && echo "repertoire admin"
chmod 640 && echo "droit des utilisateur"

#creation de script pour l'utilisateur "fatale"

mkdir /home/LaGriffe/script &&  echo "creation dossier script"
touch /home/LaGriffe/script/blackwatch.sh 
echo 'un tir, un mort'

#creation de script pour l'utilisateur tracer

mkdir /home/Tracer/dossierperso && echo "creation dossier perso pour Tracer"
chown -r Tracer /home/Tracer/dossierperso && echo "droit de tracer sur le dossier perso"
touch /home/Tracer/dossierperso/hey.sh && echo "creation script hey"
echo salut mon chou! la cavalerie est arrivée

#création du dossier home info && echo "creation dossier home info"
mkdir /home/info
chown -r Tracer /home/info && echo "droit de tracer sur dossier home info"



