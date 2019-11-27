SCRIPTS=/data/user/shared_projects/formas_membrane_final/preparation/python_scripts/SCRIPTS

export PYTHONPATH=$PYTHONPATH:$SCRIPTS

python $SCRIPTS/Membrane/popimem2ipcmem.py -f ../32popi_22dopc_10erg/Minimization/em_whole.gro -t ipc.pdb -z ipc.zmat -i slipids.ff/ipc.itp -n 10  > replaced.gro
