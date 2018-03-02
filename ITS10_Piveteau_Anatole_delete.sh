#!/bin/sh
# Created by Anatole Piveteau		#
# at : 02/03/2018 10:46:30			#
# Environnement : DEBIAN 9.1.0		#
# mail : anatole.piveteau@gmail.com	#
#									#
# BEGIN								#
#									#
# Remove all user files and user
echo "Remove users and users files"
userdel -r -f Tracer
userdel -r -f Fatale
userdel -r -f JimMorison
echo "Remove directory LaGriffe"
rm -rf /home/info /home/LaGriffe