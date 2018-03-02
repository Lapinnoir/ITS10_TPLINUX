source ITS10_Hervagaut_Killiann.sh

useradd JimMorrison --home /JimMorrison --password root;
useradd Tracer --home /Tracer --password root;
useradd Fatale --home /Fatale --password root;

groupadd Overwatch;
usermod -aG Overwatch JimMorisson;
usermod -aG Overwatch Tracer;

cat /etc/group;

mkdir LaGriffe;
cd LaGriffe;
mkdir Gantelet_Infini;
touch plan.txt;
echo "Que Onda hahaha" > plan.txt;

mkdir Script;
cd Script;
touch blackwatch.sh;
echo "un tir, un mort" > blackwatch.sh;

cd ..;
chown Fatale Script;
cd ~;


cd Tracer;
touch Hey\!.sh;
echo "Salut mon chou ! La cavalerie est arrivée !" > Hey\!.sh;
chown Tracer Hey\!.sh;


cd ~;
mkdir info;