# init source file #
source ITS10_Hervagaut_Killiann.sh

# adding users #
echo "Enter the password for JimMorrison"
useradd JimMorrison --home /JimMorrison -p $(openssl passwd -1);
echo "Enter the password for Tracer"
useradd Tracer --home /Tracer -p $(openssl passwd -1);
echo "Enter the password for Fatale"
useradd Fatale --home /Fatale -p $(openssl passwd -1);

# create group & adding users to it #
echo "Adding JimMorisson & Tracer to group : Overwatch"
groupadd Overwatch;
usermod -aG Overwatch JimMorisson;
usermod -aG Overwatch Tracer;

# debug group #
echo "Debug group : Overwatch"
cat /etc/group;

# make directories #

mkdir LaGriffe;
echo "Lagriffe directory is created"
cd LaGriffe;
mkdir Gantelet_Infini;
echo "Gantelet_Infini is created"

# adding plan.txt #
touch plan.txt;
echo "Que Onda hahaha" > plan.txt;

echo "Plan.txt is created in Gantelet_Infini"

# make script dir #
mkdir Script;
echo "Script directory is created"
cd Script;

# adding blackwatch script #
touch blackwatch.sh;
echo "un tir, un mort" > blackwatch.sh;
echo "blackwatch.sh is created in Gantelet_Infini/Script"

# adding rules #
cd ..;
chown Fatale Script;
echo "Script directory belongs to user Fatale"
cd ~;

# adding the hey! script #
cd Tracer;
touch Hey\!.sh;
echo "Salut mon chou ! La cavalerie est arrivée !" > Hey\!.sh;
echo "Hey!.sh script has been created"

# adding rules #
cd ..;
chown Tracer Tracer;
echo "Tracer directory belongs to user Tracer"

# finishing by adding info dir #
cd ~;
mkdir info;
echo "info directory is created in home"
echo "Script ended"

# cannot test it due to a VirtualBox issue -> inateignable disk #