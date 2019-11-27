#!/usr/bin/env python3

import os
import argparse
import shutil
import sys 
import pandas as pd

def apl_thk(files,out_name,av):
   
    avg_apl = []
    sd_apl = []
    avg_t = []
    sd_t = []
    for file in files:
        df = pd.read_csv(file,
                           sep='\t',
                           names=["Time",
                                     "APL",
                                     "VPL",
                                     "Thickness",
                                     "RMSF"])
        # append in loop the averages and sd for simulation time 
        # of all the replicates
        avg_apl.append(df["APL"].mean()) 
        avg_t.append(df["Thickness"].mean())
        sd_apl.append(df["APL"].std()) 
        sd_t.append(df["Thickness"].std()) 

    apl = pd.DataFrame(avg_apl+sd_apl) # dataframe with data for all replicates
    apl = apl.transpose().round(3)
    Thk = pd.DataFrame(avg_t + sd_t) # dataframe with data for all replicates
    Thk = Thk.transpose().round(3)

    avg_apl_samples = pd.DataFrame(avg_apl[0:av]).mean().round(3) # average replicate 1-3
    avg_t_samples = pd.DataFrame(avg_t[0:av]).mean().round(3) #  average replicate 1-3
    
    sd_apl_samples = pd.DataFrame(avg_apl[0:av]).std().round(3) # sd replicate 1-3
    sd_t_samples = pd.DataFrame(avg_t[0:av]).std().round(3) # sd replicate 1-3
    
    t_samples = pd.concat([avg_t_samples,sd_t_samples],axis=1) # concatenated and have only one dataframe
    apl_samples = pd.concat([avg_apl_samples,sd_apl_samples],axis=1) # concatenated and have only one dataframe

        #### OUTPUT ####
    apl.to_csv("apl_time_all_repl_" + out_name + ".csv",
               sep="\t" ,header=None,index=None)
    Thk.to_csv("thickness_time_all_repl_"+ out_name +".csv",
               sep="\t" ,index=None,header=None)
    
    t_samples.to_csv("thickness_replicate1-3_"+ out_name +".csv",
               sep="\t" ,header=None,index=None)
    apl_samples.to_csv("apl_replicate1-3_"+ out_name +".csv",
               sep="\t" ,header=None,index=None)
    

def order_par(op_file,out_name,av):

    avg = []
    sd = []    
    for file in op_file:
        if "dopc" in file:
            suffix = "dopc"
        elif "popi" in file: 
            suffix = "popi"
        df = pd.read_csv(file,
                           sep='\t',header=None,)
        df = df.iloc[:,1:3]
        df = df.tail(1) # collect the avg and sd from the last line

        avg.append(float(df.iloc[0,0]))  
        sd.append(float(df.iloc[0,1]))
    
    op_all_rep = pd.DataFrame(avg+sd).transpose().round(3) # dataframe with data for all replicats
    op_samples_avg = pd.DataFrame(avg[0:av]).mean().round(3) # avg replicates 1-3
    op_samples_sd =  pd.DataFrame(avg[0:av]).std().round(3) # sd replicate 1-3 
    op_final = pd.concat([op_samples_avg,op_samples_sd],axis=1) 
   
    op_all_rep.to_csv("op_"+suffix+"_time_all_repl_" + out_name + ".csv",
               sep="\t" ,header=None,index=None)
    op_final.to_csv("op_"+suffix+"_replicate1-3_"+ out_name +".csv",
               sep="\t" ,header=None,index=None)


def main():

    # Main function 
    description= "Script to collect the data for the FORMAS project"
    usage = ""
    parser = argparse.ArgumentParser(description='', usage=usage)

    parser.add_argument('-f',
                        '--files',
                        dest='file',
                        required=True,
                        nargs='+',
                        type=str,
                        help='membprop file from the analysis',
                        )

    parser.add_argument('-op',
                        '--order',
                        dest='order',
                        required=True,
                        type=str,
                        nargs='+',
                        help='membprop file from the analysis',
                        )

    parser.add_argument('-o',
                        '--out_name',
                        dest='out',
                        required=True,
                        type=str,
                        help='membprop file from the analysis',
                        )
    
    parser.add_argument('-av',
                        '--average',
                        dest='av',
                        required=True,
                        type=str,
                        help='number of replicate for the average',
                        )


    args = parser.parse_args()
    files = args.file
    op_file = args.order
    out_name = args.out
    av = int(args.av)
    apl_thk(files,out_name,av)
    order_par(op_file,out_name,av)


if __name__ == "__main__":
    main()
    
    
