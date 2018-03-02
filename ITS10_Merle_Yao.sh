#############################
#  MERLE Yao                #
#  02 mars 2018             #
#  Débian 9.1.0             #
#  yao.merle@imie.fr        #
#############################


#creation d'utilisateur avec mots de passe crypté

useradd  --force -badname JackMorrison -m -s /bin/bash-p "`openssl passwd userpass`";
useradd  --force -badname Tracer -m -s /bin/bash-p "`openssl passwd userpass`";
useradd  --force -badname Fatale -m -s /bin/bash-p "`openssl passwd userpass`";

#creation de groupe

groupadd Overwatch;

#ajout des utilisateurs au groupe

useradd JackMorrison Overwatch;
useradd Tracer Overwatch;
useradd Fatale Overwatch;

#creation de fichier

mkdir /home/LaGriffe/Gantelet_Infini;
echo 'Que Onda hahaha'

#attribution des droits sur le fichier aux utilisateurs

chown JackMorrison /home/LaGriffe/Gantelet_Infini;
chown JackMorrison /home/LaGriffe/Gantelet_Infini;
chown Fatale:Overwatch /home/LaGriffe/Gantelet_Infini;
chmod 640;

#creation de script pour l'utilisateur "fatale"

mkdir /home/LaGriffe/script;
touch /home/LaGriffe/script/blackwatch.sh
echo 'un tir, un mort'

#creation de script pour l'utilisateur tracer

mkdir /home/Tracer/dossierperso;
chown -r Tracer /home/Tracer/dossierperso;
touch /home/Tracer/dossierperso/hey.sh
echo salut mon chou! la cavalerie est arrivée

#création du dossier home info
mkdir /home/info;
chown -r Tracer /home/info;



