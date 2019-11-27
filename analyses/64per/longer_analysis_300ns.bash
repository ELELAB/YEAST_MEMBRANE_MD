sys=7


SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/Scripts-master
export PYTHONPATH=$PYTHONPATH:$SCRIPTS

for r in {1..2}
do
mkdir replicate${r}
mkdir replicate${r}/300ns/


if [ -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../simulations/64per/replicate${r}/500ns/*.xtc  -o replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s ../../simulations/64per/replicate${r}/500ns/m${sys}_r${r}_md1.tpr -pbc whole -b 0 -e 300000 <<eof
0
eof
fi

# APL and Thickness 

python $SCRIPTS/Md/md_memprop.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc -s ../../simulations/64per/replicate${r}/500ns/m${sys}_r${r}_md1.tpr --lipidmask "resname IPC or resname POPI or resname DOPC or resname ERG or resname AOPI or resname BOPI or resname LOPI or resname AOPC or resname BOPC or resname LOPC or resname DCPC or resname PCPI or resname DPPC or resname DYPC or resname DSPC or resname DUPC or resname LLPC" --watmask "resname TIP3" -o replicate${r}/300ns/m${sys}_r${r}_memprop

# OP

python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s  ../../simulations/64per/replicate${r}/500ns/m${sys}_r${r}_md1.tpr  --analysis CH --selections "DOPC:C3(2..18)" "DOPC:C2(2..18)" -o  replicate${r}/300ns/m${sys}_r${r}_order_dopc
python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s ../../simulations/64per/replicate${r}/500ns/m${sys}_r${r}_md1.tpr  --analysis CH --selections "POPI:C3(2..16)" "POPI:C2(2..18)" -o  replicate${r}/300ns/m${sys}_r${r}_order_popi

done


#replicate3

r=3 
mkdir replicate${r}
mkdir replicate${r}/300ns/

if [ -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../simulations/64per/replicate${r}/300ns/*.xtc  -o replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s ../../simulations/64per/replicate${r}/300ns/m${sys}_r${r}_md1.tpr -pbc whole -b 0 -e 300000 <<eof
0
eof
fi

# APL and Thickness 

python $SCRIPTS/Md/md_memprop.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc -s ../../simulations/64per/replicate${r}/300ns/m${sys}_r${r}_md1.tpr --lipidmask "resname IPC or resname POPI or resname DOPC or resname ERG or resname AOPI or resname BOPI or resname LOPI or resname AOPC or resname BOPC or resname LOPC or resname DCPC or resname PCPI or resname DPPC or resname DYPC or resname DSPC or resname DUPC or resname LLPC" --watmask "resname TIP3" -o replicate${r}/300ns/m${sys}_r${r}_memprop 

# OP

python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s  ../../simulations/64per/replicate${r}/300ns/m${sys}_r${r}_md1.tpr  --analysis CH --selections "DOPC:C3(2..18)" "DOPC:C2(2..18)" -o  replicate${r}/300ns/m${sys}_r${r}_order_dopc
python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/300ns/m${sys}_r${r}_md1_whole_300ns.xtc  -s ../../simulations/64per/replicate${r}/300ns/m${sys}_r${r}_md1.tpr  --analysis CH --selections "POPI:C3(2..16)" "POPI:C2(2..18)" -o  replicate${r}/300ns/m${sys}_r${r}_order_popi



