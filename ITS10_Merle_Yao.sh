#############################
#  MERLE Yao                #
#  02 mars 2018             #
#  D�bian 9.1.0             #
#  yao.merle@imie.fr        #
#############################


#creation d'utilisateur avec mots de passe crypt�

useradd  --force -badname JackMorrison -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur cr�e"
useradd  --force -badname Tracer -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur cr�e"
useradd  --force -badname Fatale -m -s /bin/bash-p "`openssl passwd userpass`" && echo "utilisateur cr�e"

#creation de groupe

groupadd Overwatch && echo "groupe cr�e"

#ajout des utilisateurs au groupe

usermod -aG Overwatch JackMorrison && echo "utilisateur ajout� au groupe"
useradd -aG Overwatch Tracer && echo "utilisateur ajout� au groupe"
useradd -aG Overwatch Fatale && echo "utilisateur ajout� au groupe"

#creation de fichier

mkdir /home/LaGriffe/Gantelet_Infini && echo 'Que Onda hahaha'

#attribution des droits sur le fichier aux utilisateurs

chown JackMorrison /home/LaGriffe/Gantelet_Infini;
chown JackMorrison /home/LaGriffe/Gantelet_Infini;
chown Fatale:Overwatch /home/LaGriffe/Gantelet_Infini
chmod 640

#creation de script pour l'utilisateur "fatale"

mkdir /home/LaGriffe/script;
touch /home/LaGriffe/script/blackwatch.sh
echo 'un tir, un mort'

#creation de script pour l'utilisateur tracer

mkdir /home/Tracer/dossierperso;
chown -r Tracer /home/Tracer/dossierperso
touch /home/Tracer/dossierperso/hey.sh
echo salut mon chou! la cavalerie est arriv�e

#cr�ation du dossier home info
mkdir /home/info
chown -r Tracer /home/info



