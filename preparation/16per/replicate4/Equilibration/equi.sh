model=2
R=4

gmx grompp -f equil-short_heavyh.mdp -c ../Minimization/m${model}_r${R}_em.gro -p m${model}.top -o m${model}_r${R}_equil_5ns.tpr -n m${model}_index.ndx
gmx mdrun -deffnm m${model}_r${R}_equil_5ns.tpr
