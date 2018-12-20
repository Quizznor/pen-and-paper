import sys
import random

## shell ##

assert len(sys.argv)==3, "Usage: <maketabs.py> <outf_name> <max_points_of_zombie>"

outf_name = "../tab/{}".format(sys.argv[1])
maxpoints = int(sys.argv[2])

## catching character traits ##

handeln = ["beissen","schlagen","klettern","rennen"]
interagieren = ["kreischen"]

def con_sum(n, total):
    dividers = sorted(random.sample(range(1, total), n - 1))
    return [a - b for a, b in zip(dividers + [total], [0] + dividers)]

def printelem(list,i):
    if i>=len(list):
        return ""
    else:
        return list[i]

def totalpoints(ary):
    n = 0
    for elem in ary:
        if float(elem)>=80:
            n+=1
    summe = 0
    for elem in ary:
        summe+=float(elem)
    return summe/10+n*10

traitpoints = con_sum(5,maxpoints)
hp = traitpoints[:-1]
ip = [traitpoints[-1]]

## writing to file ##

with open("{}.tex".format(outf_name),"w") as f:
    f.write("\\begin{tabular}{cccc}\n")
    f.write("\\toprule\n")
    f.write("Handeln &  & Interagieren & \\\\\n")
    f.write(str(int(totalpoints(hp)))+" &  & "+str(int(totalpoints(ip)))+"\\\\\n")
    f.write("\midrule\n")
    for j in range(max(len(handeln),len(interagieren))):
        trait1, trait3 = str(printelem(handeln,j)),str(printelem(interagieren,j))
        point1, point3 = str(printelem(hp,j)),str(printelem(ip,j))
        f.write(trait1+" & "+point1+" & "+trait3+" & "+point3+" \\\\\n")
    f.write(r"\bottomrule\n")
    f.write(r"\end{tabular}")
