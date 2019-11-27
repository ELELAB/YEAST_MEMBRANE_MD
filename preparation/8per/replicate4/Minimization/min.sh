model=1
R=4

gmx grompp -f em.mdp -c ../m${model}_r${R}_initial.gro  -p m${model}.top -o m${model}_r${R}_em.tpr
gmx mdrun -deffnm m${model}_r${R}_em
