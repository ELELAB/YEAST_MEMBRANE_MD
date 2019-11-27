gmx grompp -f em.mdp -c ../replaced.gro -p system.top -o em.tpr
gmx mdrun -deffnm em


