



m=m8
out=300ns
mkdir avg_500ns
mkdir avg_$out

#300ns

python collection_mean_sd.py -f replicate1/$out/${m}_r1_memprop_dt.txt replicate2/$out/${m}_r2_memprop_dt.txt replicate3/$out/${m}_r3_memprop_dt.txt  -o $out -op replicate1/$out/${m}_r1_order_dopc.txt replicate2/$out/${m}_r2_order_dopc.txt replicate3/$out/${m}_r3_order_dopc.txt  -av 3

python collection_mean_sd.py -f replicate1/$out/${m}_r1_memprop_dt.txt replicate2/$out/${m}_r2_memprop_dt.txt replicate3/$out/${m}_r3_memprop_dt.txt  -o $out -op replicate1/$out/${m}_r1_order_popi.txt replicate2/$out/${m}_r2_order_popi.txt replicate3/$out/${m}_r3_order_popi.txt  -av 3

mv *.csv avg_$out


# 500ns analysis

out=500ns

python collection_mean_sd.py -f replicate1/$out/${m}_r1_memprop_dt.txt replicate2/$out/${m}_r2_memprop_dt.txt  -o $out -op replicate1/$out/${m}_r1_order_dopc.txt replicate2/$out/${m}_r2_order_dopc.txt -av 3 

python collection_mean_sd.py -f replicate1/$out/${m}_r1_memprop_dt.txt replicate2/$out/${m}_r2_memprop_dt.txt   -o $out -op replicate1/$out/${m}_r1_order_popi.txt replicate2/$out/${m}_r2_order_popi.txt -av 3

mv *.csv avg_500ns
