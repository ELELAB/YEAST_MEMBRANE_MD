gmx make_ndx -f em.gro << EOF
r POT TIP3
name 9 Solvent
r IPC POPI DOPC ERG SOPC
name 10 Membrane
q
EOF

gmx grompp -f equil-short_heavyh.mdp -c ../Minimization/em.gro -p system.top -o equil_5ns.tpr -n index.ndx
gmx mdrun -deffnm equil_5ns

gmx trjconv -f equil_5ns.xtc -o equil_5ns_whole_4500ps.gro -s equil_5ns.tpr -b 4500 -e 4500 -pbc whole
gmx trjconv -f equil_5ns.xtc -o equil_5ns_whole_4650ps.gro -s equil_5ns.tpr -b 4650 -e 4650 -pbc whole
gmx trjconv -f equil_5ns.xtc -o equil_5ns_whole_4800ps.gro -s equil_5ns.tpr -b 4800 -e 4800 -pbc whole
gmx trjconv -f equil_5ns.gro  -o equil_5ns_whole.gro -s equil_5ns.tpr -pbc whole
