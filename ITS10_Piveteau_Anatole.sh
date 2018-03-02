#!/bin/sh
# Created by Anatole Piveteau		#
# at : 02/03/2018 10:46:30		#
# Environnement : DEBIAN 9.1.0		#
# mail : anatole.piveteau@gmail.com	#
#					#
# BEGIN					#
#					#
# change pwd env variable to home	#
echo "Begin\n"
echo "Change directory to home\n"
cd ~/..
# Create directory			#
echo "Creating directory:\n\t_ LaGriffe\n\t_ LaGriffe/Gantelet_Infini\n\t_ LaGriffe/Gantelet_Infini\Script\n\t_ JimMorrison\n\t_ Tracer\n\t_ info\n\n"
mkdir /home/LaGriffe /home/LaGriffe/Gantelet_Infini /home/LaGriffe/Gantelet_Infini/Script home/info
# Create user group Overwatch
echo "Create group Overwatch\n"
groupadd -f Overwatch
# Create plan.txt			#
echo "Create plan.txt in LaGriffe/Gantelet_Infini/plan.txt\n"
echo "Que Onda hahaha\n" > /home/LaGriffe/Gantelet_Infini/plan.txt
# Create users				#
#	- user - pwd			#
#	- JimMorrison - jimmorrison	#
#	- Tracer - tracer		#
#	- Fatale - fatale		#
echo "Create users :\n\tTracer\n\tJimMorrison\n\tFatale"
echo "Veuillez taper le mots de passe pour JimMorrison"
useradd -g Overwatch -m -d /home/JimMorrison -s /bin/bash -p $(openssl passwd -1) JimMorrison
echo "Veuilez taper le mots de passe pour Tracer"
useradd -g Overwatch -m -d /home/Tracer -s /bin/bash -p $(openssl passwd -1) Tracer
echo "Veuillez taper le mots de passe pour Fatale"
useradd -d /home/LaGriffe -s /bin/bash -p $(openssl passwd -1) Fatale
# CREATE SCRIPT AND GIVE RIGHT		#
echo "Create script file blackwatch.sh in LaGriffe/Gantelet_Infini/Script"
echo 'echo "un tir, un mort."\n'>/home/LaGriffe/Gantelet_Infini/Script/blackwatch.sh
echo "Create script file Hey!.sh in Tracer/"
echo 'echo Salut mon chou ! La cavalerie est arrivée\n'>/home/Tracer/Hey\!.sh 
echo "Give access to Fatale to directory Gantelet_Infini\n"
chown -R Fatale:Fatale /home/LaGriffe/Gantelet_Infini/
echo "Give Tracer access to Tracer/Hey!.sh script\n"
chown -R Tracer:Overwatch /home/Tracer/Hey\!.sh
echo "Give Tracer access to JimMorrison directory\n"
chown -R Tracer:Overwatch /home/JimMorrison/
echo "End"
