# Fig 1 

echo -e 'Average\tSD' > Fig2_A.csv  | cat Null/256lipids_heavyh/avg/apl*replicate1-3*.csv 8per/avg_300ns/apl*replicate1-3*.csv 16per/avg_300ns/apl*replicate1-3*.csv  24per/avg_300ns/apl*replicate1-3*.csv 32per/avg_300ns/apl*replicate1-3*.csv 40per/avg_300ns/apl*replicate1-3*.csv 48per/avg_300ns/apl*replicate1-3*.csv 64per/avg_300ns/apl*replicate1-3*.csv 96per/avg_300ns/apl*replicate1-3*.csv >> Fig2_A.csv

echo -e 'Average\tSD'> Fig2_B.csv | cat Null/256lipids_heavyh/avg/thickness*replicate1-3*csv 8per/avg_300ns/thickness*replicate1-3*csv 16per/avg_300ns/thickness*replicate1-3*csv 24per/avg_300ns/thickness*replicate1-3*csv 32per/avg_300ns/thickness*replicate1-3*csv 40per/avg_300ns/thickness*replicate1-3*csv 48per/avg_300ns/thickness*replicate1-3*csv 64per/avg_300ns/thickness*replicate1-3*csv 96per/avg_300ns/thickness*replicate1-3*csv >> Fig2_B.csv


echo -e 'Average\tSD' > Fig2_C.csv| cat Null/256lipids_heavyh/avg/op_dopc*replicate1-3*.csv 8per/avg_300ns/op_dopc*replicate1-3*.csv 16per/avg_300ns/op_dopc*replicate1-3*.csv 24per/avg_300ns/op_dopc*replicate1-3*.csv 32per/avg_300ns/op_dopc*replicate1-3*.csv 40per/avg_300ns/op_dopc*replicate1-3*.csv 48per/avg_300ns/op_dopc*replicate1-3*.csv 64per/avg_300ns/op_dopc*replicate1-3*.csv 96per/avg_300ns/op_dopc*replicate1-3*.csv >> Fig2_C.csv

echo -e 'Average\tSD'> Fig2_D.csv | cat Null/256lipids_heavyh/avg/op_popi*replicate1-3*.csv 8per/avg_300ns/op_popi*replicate1-3*.csv 16per/avg_300ns/op_popi*replicate1-3*.csv 24per/avg_300ns/op_popi*replicate1-3*.csv 32per/avg_300ns/op_popi*replicate1-3*.csv 40per/avg_300ns/op_popi*replicate1-3*.csv 48per/avg_300ns/op_popi*replicate1-3*.csv 64per/avg_300ns/op_popi*replicate1-3*.csv 96per/avg_300ns/op_popi*replicate1-3*.csv >> Fig2_D.csv


# FigS1 

cat Null/256lipids_heavyh/avg/apl*time_all_*.csv 8per/avg_300ns/apl*time_all_*.csv 16per/avg_300ns/apl*time_all_*.csv 24per/avg_300ns/apl*time_all_*.csv 32per/avg_300ns/apl*time_all_*.csv 40per/avg_300ns/apl*time_all_*.csv 48per/avg_300ns/apl*time_all_*.csv 64per/avg_300ns/apl*time_all_*.csv 96per/avg_300ns/apl*time_all_*.csv >> FigS1_A.csv


cat Null/256lipids_heavyh/avg/thickness_time_all_repl_*.csv 8per/avg_300ns/thickness_time_all_repl_*.csv 16per/avg_300ns/thickness_time_all_repl_*.csv 24per/avg_300ns/thickness_time_all_repl_*.csv 32per/avg_300ns/thickness_time_all_repl_*.csv 40per/avg_300ns/thickness_time_all_repl_*.csv 48per/avg_300ns/thickness_time_all_repl_*.csv 64per/avg_300ns/thickness_time_all_repl_*.csv 96per/avg_300ns/thickness_time_all_repl_*.csv >> FigS1_B.csv


cat Null/256lipids_heavyh/avg/op_dopc*_all_repl_*.csv 8per/avg_300ns/op_dopc*_all_repl_*.csv 16per/avg_300ns/op_dopc*_all_repl_*.csv 24per/avg_300ns/op_dopc*_all_repl_*.csv 32per/avg_300ns/op_dopc*_all_repl_*.csv 40per/avg_300ns/op_dopc*_all_repl_*.csv 48per/avg_300ns/op_dopc*_all_repl_*.csv 64per/avg_300ns/op_dopc*_all_repl_*.csv 96per/avg_300ns/op_dopc*_all_repl_*.csv >> FigS1_C.csv

cat Null/256lipids_heavyh/avg/op_popi*_all_repl_*.csv 8per/avg_300ns/op_popi*_all_repl_*.csv 16per/avg_300ns/op_popi*_all_repl_*.csv 24per/avg_300ns/op_popi*_all_repl_*.csv 32per/avg_300ns/op_popi*_all_repl_*.csv 40per/avg_300ns/op_popi*_all_repl_*.csv 48per/avg_300ns/op_popi*_all_repl_*.csv 64per/avg_300ns/op_popi*_all_repl_*.csv 96per/avg_300ns/op_popi*_all_repl_*.csv >> FigS1_D.csv

# FigS2

i=300ns
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 48per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 64per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 96per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 48per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 64per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 96per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 48per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 64per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 96per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 48per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $5}' 64per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 96per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt

i=500ns
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $1 "\t" $2}' 48per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 64per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 96per/avg_${i}/apl_time_all_repl_${i}.csv >> comp_${i}_A.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $1 "\t" $2}' 48per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 64per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 96per/avg_${i}/thickness_time_all_repl_${i}.csv >> comp_${i}_B.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $1 "\t" $2}' 48per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 64per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 96per/avg_${i}/op_dopc*_all_repl_${i}.csv >> comp_${i}_C.txt

awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 8per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 16per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 24per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 32per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $6}' 40per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $1 "\t" $2}' 48per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 64per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt
awk 'BEGIN{FS="\t"} {print $2 "\t" $4}' 96per/avg_${i}/op_popi*_all_repl_${i}.csv >> comp_${i}_D.txt

echo -e "Avg_300ns\tSD_30ns\tAvg_500ns\tSD_500" >> FigS2_A.csv | paste comp_300ns_A.txt comp_500ns_A.txt >> FigS2_A.csv
echo -e "Avg_300ns\tSD_30ns\tAvg_500ns\tSD_500" >> FigS2_B.csv | paste comp_300ns_B.txt comp_500ns_B.txt >> FigS2_B.csv
echo -e "Avg_300ns\tSD_30ns\tAvg_500ns\tSD_500" >> FigS2_C.csv | paste comp_300ns_C.txt comp_500ns_C.txt >> FigS2_C.csv
echo -e "Avg_300ns\tSD_30ns\tAvg_500ns\tSD_500" >> FigS2_D.csv | paste comp_300ns_D.txt comp_500ns_D.txt >> FigS2_D.csv

rm comp_*.txt


