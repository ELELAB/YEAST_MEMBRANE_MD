gmx grompp -f em.mdp -c ../initial.gro -p system.top -o em.tpr
gmx mdrun -deffnm em
gmx trjconv -f em.gro -o em_whole.gro -s em.tpr -pbc whole
