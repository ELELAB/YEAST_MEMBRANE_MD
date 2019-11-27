SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/Scripts-master

export PYTHONPATH=$PYTHONPATH:$SCRIPTS

R=1
python $SCRIPTS/Membrane/extend_chain.py -f ../../simulations/Null/256lipids_heavyh/replicate${R}/r${R}_256lipids_heavyh_md1_whole.gro -r DOPC DOPC DOPC POPI POPI POPI -n 24 12 6 24 12 6 -w AOPC BOPC LOPC AOPI BOPI LOPI -a 20 22 24 20 22 24 -c sn1 -o m6_r1_extended.gro --seed $RANDOM
python $SCRIPTS/Membrane/saturate_chain.py -f m6_r1_extended.gro -r AOPC BOPC LOPC -o m6_r1_saturated.gro
sed -i "" -e "s/AOPC H10R/AOPC H101/" -e "s/AOPC  H9R/AOPC  H91/" -e "s/BOPC H10R/BOPC H101/" -e "s/BOPC  H9R/BOPC  H91/" -e "s/LOPC H10R/LOPC H101/" -e "s/LOPC  H9R/LOPC  H91/" m6_r1_saturated.gro
python $SCRIPTS/Gromacs/gmx_reorder_atm.py -f m6_r1_saturated.gro -p m6.top -o m6_r1_initial.gro




