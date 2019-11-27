m=NULL
mkdir avg

#300ns

python2 collection_mean_sd.py -f replicate1/${m}_r1_memprop_dt.txt replicate2/${m}_r2_memprop_dt.txt replicate3/${m}_r3_memprop_dt.txt replicate4/${m}_r4_memprop_dt.txt -o NULL -op replicate1/${m}_r1_order_dopc.txt replicate2/${m}_r2_order_dopc.txt replicate3/${m}_r3_order_dopc.txt  replicate4/${m}_r4_order_dopc.txt -av 3

python2 collection_mean_sd.py -f replicate1/${m}_r1_memprop_dt.txt replicate2/${m}_r2_memprop_dt.txt replicate3/${m}_r3_memprop_dt.txt replicate4/${m}_r4_memprop_dt.txt  -o NULL -op replicate1/${m}_r1_order_popi.txt replicate2/${m}_r2_order_popi.txt replicate3/${m}_r3_order_popi.txt replicate4/${m}_r4_order_popi.txt -av 3
 

mv *.csv avg

