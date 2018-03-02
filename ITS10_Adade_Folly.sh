#ADADE FOLLY
#Vendredi 02 Mars 2018
#Script fonctionnel sur Linux_Debian
#jocelyn.adade@imie.fr

#Création User et Mot de passe
useradd JackMorrison -m -s/home/JackMorrison/bash -p "openssl passwd root" && echo "création utilisateur JackMorrison"

useradd Tracer -m -s /home/Tracer/bash -p "openssl passwd root" && echo "création utilisateur Tracer"
useradd Fatale -m -s /home/Fatale/bash -p "openssl passwd root" && echo "création utilisateur Fatale"
#Création groupe
addgroup Overwatch && echo "création groupeOverwatch"

#Ajout à Groupe Overwatch
usermod -aG Overwatch JackMorrison && echo "ajouter JackMorrison à Overwatch"
usermod -aG Overwatch Tracer && echo "ajouter Tracer à Overwatch"

mkdir -p /home/LaGriffe/Gantelet_Infini
cd /home/Lagriffe/Gantelet_Infini
touch plan.txt && echo "plan.txt Créer"
cd ..

chown -R Fatale:Overwatch /home/Lagriffe/Gantelet_Infini
chmod 751 /home/Lagriffe/Gantelet_Infini
cd Gantelet_infini
chmod 751 plan.txt
echo " Que Onda hahaha" >plan.txt && echo "Que Onda hahaha ajouter à plan.txt"
cd ..

#Création et gestion de blackwatch.sh
mkdir Script
 cd script
touch blackwatch.sh && echo "script blackwatch créer"
echo " un tir, un mort ">blackwatch.sh && echo "un tir, un mort ajouter à script blackwatch"
chown Fatale blackwatch.sh
chmod 711 blackwatch.sh
cd ..
chown Fatale script
chmod 700 script
cd /home/Tracer

#Création et gestion du script Hey!.sh
touch Hey!.sh && echo "création Hey!.sh"
echo " salut mon chou ! La cavalerie est arrivée ! ">Hey!.sh && echo "ajout de salut mon chou! la cavale..... à Hey!.sh"
chown Tracer:Overwatch Hey!.sh
chmod 500 Hey!.sh
cd ..

chwon JackMorrison:Overwatch /home/JackMorrison
chmod 700 /home/JackMorrison

#Création et gestion /home/info
mkdir /home/info && echo "creation repertoire /home/info"
chown :Overwatch /home/info
chmod 751 /home/info
cd ..

