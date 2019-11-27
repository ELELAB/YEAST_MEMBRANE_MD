SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/Scripts-master

export PYTHONPATH=$PYTHONPATH:$SCRIPTS

python $SCRIPTS/Gromacs/gmx_reorder_atm.py -f step5_assembly.gro -p system.top -o initial.gro
