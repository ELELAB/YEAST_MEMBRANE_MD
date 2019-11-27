SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/Scripts-master
export PYTHONPATH=$PYTHONPATH:$SCRIPTS

out=NULL

mkdir replicate1/
# Replicate Null 1

if [ -f replicate1/256lipids_heavyh_md1_whole.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.xtc  -o replicate1/256lipids_heavyh_md1_whole.xtc  -s ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.tpr -pbc whole <<eof
0
eof
fi

if [ -f replicate1/256lipids_heavyh_md2_whole.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md2.xtc  -o replicate1/256lipids_heavyh_md2_whole.xtc  -s ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.tpr -pbc whole <<eof
0
eof
fi



# APL and Thickness 

python $SCRIPTS/Md/md_memprop.py -f replicate1/256lipids_heavyh_md1_whole.xtc replicate1/256lipids_heavyh_md2_whole.xtc -s ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.tpr --lipidmask "resname IPC or resname POPI or resname DOPC or resname ERG or resname AOPI or resname BOPI or resname LOPI or resname AOPC or resname BOPC or resname LOPC or resname DCPC or resname PCPI or resname DPPC or resname DYPC or resname DSPC or resname DUPC or resname LLPC" --watmask "resname TIP3" -o replicate1/${out}_r1_memprop


# OP

python $SCRIPTS/Md/md_chainorder.py -f replicate1/256lipids_heavyh_md1_whole.xtc replicate1/256lipids_heavyh_md2_whole.xtc -s ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.tpr  --analysis CH --selections "DOPC:C3(2..18)" "DOPC:C2(2..18)" -o  replicate${r}/${out}_r${r}_order_dopc
python $SCRIPTS/Md/md_chainorder.py -f replicate1/256lipids_heavyh_md1_whole.xtc replicate1/256lipids_heavyh_md2_whole.xtcc -s ../../../simulations/Null/256lipids_heavyh/replicate1/256lipids_heavyh_md1.tpr  --analysis CH --selections "POPI:C3(2..16)" "POPI:C2(2..18)" -o  replicate${r}/${out}_r${r}_order_popi





## Replicate Null 2-4

for r in {2..4}
do

mkdir replicate${r}
if [ -f replicate${r}/m${sys}_r${r}_md1_whole.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../../simulations/Null/256lipids_heavyh/replicate${r}/r${r}_256lipids_heavyh_md1.xtc  -o replicate${r}/r${r}_256lipids_heavyh_md1_whole.xtc  -s ../../../simulations/Null/256lipids_heavyh/replicate${r}/r${r}_256lipids_heavyh_md1.tpr -pbc whole <<eof
0
eof
fi



if [ -f replicate${r}/m${sys}_r${r}_md2_whole.xtc ]
then
echo "Exists!"
else
gmx trjconv -f ../../../simulations/Null/256lipids_heavyh/r${r}_256lipids_heavyh_md2.xtc  -o replicate${r}/r${r}_256lipids_heavyh_md2_whole.xtc  -s ../../../simulations/Null/256lipids_heavyh/replicate${r}/r${r}_256lipids_heavyh_md1.tpr -pbc whole <<eof
0
eof
fi



# APL and Thickness 

python $SCRIPTS/Md/md_memprop.py -f r${r}_256lipids_heavyh_md1.xtc r${r}_256lipids_heavyh_md2.xtc -s ../../../simulations/Null/256lipids_heavyh/replicate${r}/r${r}_256lipids_heavyh_md1.tpr --lipidmask "resname IPC or resname POPI or resname DOPC or resname ERG or resname AOPI or resname BOPI or resname LOPI or resname AOPC or resname BOPC or resname LOPC or resname DCPC or resname PCPI or resname DPPC or resname DYPC or resname DSPC or resname DUPC or resname LLPC" --watmask "resname TIP3" -o replicate${r}/${out}_r${r}_memprop


# OP

python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/m${sys}_r${r}_md1_whole.xtc replicate${r}/m${sys}_r${r}_md2_whole.xtc -s ../../../simulations/Null/256lipids_heavyh/replicate${r}/m${sys}_r${r}_md1.tpr  --analysis CH --selections "DOPC:C3(2..18)" "DOPC:C2(2..18)" -o  replicate${r}/${out}_r${r}_order_dopc
python $SCRIPTS/Md/md_chainorder.py -f replicate${r}/m${sys}_r${r}_md1_whole.xtc replicate${r}/m${sys}_r${r}_md2_whole.xtc -s ../../../simulations/Null/256lipids_heavyh/replicate${r}/m${sys}_r${r}_md1.tpr  --analysis CH --selections "POPI:C3(2..16)" "POPI:C2(2..18)" -o  replicate${r}/${out}_r${r}_order_popi

done
