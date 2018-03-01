# init source file #
source ITS10_Hervagaut_Killiann.sh

# adding users #
useradd JimMorrison --home /JimMorrison --password root;
useradd Tracer --home /Tracer --password root;
useradd Fatale --home /Fatale --password root;

# create group & adding users to it #
groupadd Overwatch;
usermod -aG Overwatch JimMorisson;
usermod -aG Overwatch Tracer;

# debug group #
cat /etc/group;

# make directories #
mkdir LaGriffe;
cd LaGriffe;
mkdir Gantelet_Infini;

# adding plan.txt #
touch plan.txt;
echo "Que Onda hahaha" > plan.txt;

# make script dir #
mkdir Script;
cd Script;

# adding blackwatch script #
touch blackwatch.sh;
echo "un tir, un mort" > blackwatch.sh;

# adding rules #
cd ..;
chown Fatale Script;
cd ~;

# adding the hey! script #
cd Tracer;
touch Hey\!.sh;
echo "Salut mon chou ! La cavalerie est arrivée !" > Hey\!.sh;

# adding rules #
chown Tracer Hey\!.sh;

# finishing by adding info dir #
cd ~;
mkdir info;

# cannot test it due to a VirtualBox issue -> inateignable disk #