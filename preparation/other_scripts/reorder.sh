gro=$1
top=$2
output=$3

SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/SCRIPTS

export PYTHONPATH=$PYTHONPATH:$SCRIPTS

python $SCRIPTS/Gromacs/gmx_reorder_atm.py -f $gro -p $top -o $output
