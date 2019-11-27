SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/Scripts-master

export PYTHONPATH=$PYTHONPATH:$SCRIPTS

for R in {1..4}
do
python $SCRIPTS/Membrane/extend_chain.py -f ../../simulations/Null/256lipids_heavyh/replicate${R}/r${R}_256lipids_heavyh_md1_whole.gro -r DOPC DOPC DOPC POPI POPI POPI -n 16 8 4 16 8 4 -w AOPC BOPC LOPC AOPI BOPI LOPI -a 20 22 24 20 22 24 -c sn1 -o replicate${R}/m4_r${R}_extended.gro --seed $RANDOM
python $SCRIPTS/Membrane/saturate_chain.py -f replicate${R}/m4_r${R}_extended.gro -r AOPC BOPC LOPC -o replicate${R}/m4_r${R}_saturated.gro
sed -i "" -e "s/AOPC H10R/AOPC H101/" -e "s/AOPC  H9R/AOPC  H91/" -e "s/BOPC H10R/BOPC H101/" -e "s/BOPC  H9R/BOPC  H91/" -e "s/LOPC H10R/LOPC H101/" -e "s/LOPC  H9R/LOPC  H91/" replicate${R}/m4_r${R}_saturated.gro
python $SCRIPTS/Gromacs/gmx_reorder_atm.py -f replicate${R}/m4_r${R}_saturated.gro -p m4.top -o replicate${R}/m4_r${R}_initial.gro
done



