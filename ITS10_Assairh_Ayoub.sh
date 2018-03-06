###############################
# Assaïrh Ayoub - 02.03.2018  #
#    Testé sur Deepin 15.5    #
#    ayoub.assairh@imie.fr    #
###############################


# installation en mode root de openssl, qui permettra de chiffré les mots de passe
sudo aptitude install openssl && echo "installation de openssl";

# Création des repertoires avec le plan.txt et le script blackwatch.sh
mkdir info && mkdir LaGriffe && cd LaGriffe &&  mkdir Gantelet_Infini && cd Gantelet_Infini && echo "Que onda haha" > plan.txt && mkdir Script && cd Script && echo "un tir, un mort" > blackwatch.sh && echo "Création des repertoires avec le plan.txt et le script blackwatch.sh";

#  Création du groupe Overwatch
groupadd Overwatch && echo "Création du groupe Overwatch";

# Création des users, chiffrement avec openssl et attribution des users au groupe Overwatch + création du script de tracer hey.sh
useradd Tracer --home /Tracer --password P@ssword && usermod -aG Overwatch Tracer && echo  "Salut mon chou ! La cavalerie est arrivée" > Hey.sh && usermod -aG Overwatch Tracer && echo "Création de JackMorrison, ajout au groupe Overwatch + ajout de son mot de passe + création du fichier hey.sh";
useradd JackMorrison --home /JackMorrison --password P@ssword && usermod -aG Overwatch JackMorrison && echo "Création de JackMorrison, ajout au groupe Overwatch + ajout de son mot de passe";
useradd Fatale --home /Fatale --password P@ssword && echo "Création de Fatale + ajout de son mot de passe";

# Droits de lectures pour Tracer et JackMorrison
chmod 740 /home/LaGriffe/Gantelet_Infini && echo "Overwatch possède les droits lectures sur le dossier Gantelet_Infini";

# Tracer et JackMorrison sont désormais propriétaire de Gantelet_Infini
chown -R :Overwatch /home/LaGriffe/Gantelet_Infini && echo "Overwatch est désormais propriétaire de Gantelet_Infini";

# Fatale est desormais propriétaire de Gantelet_Infini
chown Fatale /home/LaGriffe/Gantelet_Infini && echo "Fatale devient propriétaire de Gantelet_Infini";

# On change les droits d'accès pour que Tracer n'ai plus accès au dossier personnel de JackMorrison
chmod 770 /home/JackMorrison && echo "Dommage, tu n'as pas accès au dossier de JackMorrison";

# Tracer n'a plus les droits d'écritures dans info
chmod 775 /home/info && echo "Les droits d'écriture dans infos sont révoqués pour Tracer";
