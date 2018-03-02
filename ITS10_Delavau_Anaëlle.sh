#######################################
#  Fait par DELAVAU Anaëlle	      #
#  Le 02/03/2018		      #
#  Fonctionne pour Linux 9.1.0	      #
#  Contact : anaelle.delavau@imie.fr  #
#######################################

cd ~


#Création des utilisateurs, puis du groupe et ajout des utilisateurs dans le groupe
groupadd Overwatch

useradd -m -s /bin/bash -p "`openssl passwd jackP@ssword`" JackMorrisson && echo 'Jack Morrisson a été ajouté.'
useradd -m -s /bin/bash -p "`openssl passwd tracerP@ssword`" Tracer && echo 'Tracer a été ajoutée.'
useradd -m -s /bin/bash -p "`openssl passwd fataleP@ssword`" Fatale && echo 'Fatale a été ajoutée.'

usermod -aG Overwatch JimMorrisson && echo 'Cet utilisateur a été ajouté au groupe Overwatch.'
usermod -aG Overwatch Tracer && echo 'Cet utilisateur a été ajouté au groupe Overwatch.'


#Création des dossiers, puis des fichiers dont on aura besoin
mkdir home/LaGriffe && mkdir home/LaGriffe/Gantelet_Infini && mkdir home/LaGriffe/Script && mkdir home/info && echo 'Les dossiers ont été créés.'
touch home/LaGriffe/Gantelet_Infini/plan.txt || touch home/LaGriffe/blackwatch.sh || touch home/Tracer/Hey\!.sh && echo 'Les fichiers ont été créés.'


#On donne les droits utilisateurs à Fatale et on attribue le groupe Overwatch en lecture seule
chown Fatale:Overwatch home/LaGriffe/Gantelet_Infini && chmod 740 home/LaGriffe/Gantelet_Infini && echo 'Les droits utilisateurs pour le dossier Gantelet_Infini ont été modifiés'

#On interdit l'accès au dossier personnel de Jim Morrisson, sauf à son propriétaire
chown -R JackMorrisson home/JackMorrisson && echo 'Cet utilisateur a obtenu les droits de son dossier personnel.'
chmod -R 700 home/Jim Morrisson && echo 'Seul cet utilisateur a accès à son dossier personnel.'


#On met Tracer comme propriétaire du script hey.sh et on lui donne les droits d'execution
chown -R home/Tracer && chmod 744 home/Tracer/Hey\!.sh && echo 'L'utilisateur peut excecuter son script.'

#On retire les droits d'écriture au dossier info
chmod 744 home/info && echo 'Le dossier info n'est plus en écriture'

#Scripts
echo 'Que Onda hahaha' >> plan.txt

echo 'Salut mon chou ! La cavalerie est arrivée !' >> Hey\!.sh

echo 'Un tir, un mort.' >> blackwatch.sh