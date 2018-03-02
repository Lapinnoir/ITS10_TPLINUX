#######################################
#  Fait par DELAVAU Ana�lle	      #
#  Le 02/03/2018		      #
#  Fonctionne pour Linux 9.1.0	      #
#  Contact : anaelle.delavau@imie.fr  #
#######################################

cd ~


#Cr�ation des utilisateurs, puis du groupe et ajout des utilisateurs dans le groupe
groupadd Overwatch

useradd -m -s /bin/bash -p "`openssl passwd jackP@ssword`" JackMorrisson && echo 'Jack Morrisson a �t� ajout�.'
useradd -m -s /bin/bash -p "`openssl passwd tracerP@ssword`" Tracer && echo 'Tracer a �t� ajout�e.'
useradd -m -s /bin/bash -p "`openssl passwd fataleP@ssword`" Fatale && echo 'Fatale a �t� ajout�e.'

usermod -aG Overwatch JimMorrisson && echo 'Cet utilisateur a �t� ajout� au groupe Overwatch.'
usermod -aG Overwatch Tracer && echo 'Cet utilisateur a �t� ajout� au groupe Overwatch.'


#Cr�ation des dossiers, puis des fichiers dont on aura besoin
mkdir home/LaGriffe && mkdir home/LaGriffe/Gantelet_Infini && mkdir home/LaGriffe/Script && mkdir home/info && echo 'Les dossiers ont �t� cr��s.'
touch home/LaGriffe/Gantelet_Infini/plan.txt || touch home/LaGriffe/blackwatch.sh || touch home/Tracer/Hey\!.sh && echo 'Les fichiers ont �t� cr��s.'


#On donne les droits utilisateurs � Fatale et on attribue le groupe Overwatch en lecture seule
chown Fatale:Overwatch home/LaGriffe/Gantelet_Infini && chmod 740 home/LaGriffe/Gantelet_Infini && echo 'Les droits utilisateurs pour le dossier Gantelet_Infini ont �t� modifi�s'

#On interdit l'acc�s au dossier personnel de Jim Morrisson, sauf � son propri�taire
chown -R JackMorrisson home/JackMorrisson && echo 'Cet utilisateur a obtenu les droits de son dossier personnel.'
chmod -R 700 home/Jim Morrisson && echo 'Seul cet utilisateur a acc�s � son dossier personnel.'


#On met Tracer comme propri�taire du script hey.sh et on lui donne les droits d'execution
chown -R home/Tracer && chmod 744 home/Tracer/Hey\!.sh && echo 'L'utilisateur peut excecuter son script.'

#On retire les droits d'�criture au dossier info
chmod 744 home/info && echo 'Le dossier info n'est plus en �criture'

#Scripts
echo 'Que Onda hahaha' >> plan.txt

echo 'Salut mon chou ! La cavalerie est arriv�e !' >> Hey\!.sh

echo 'Un tir, un mort.' >> blackwatch.sh