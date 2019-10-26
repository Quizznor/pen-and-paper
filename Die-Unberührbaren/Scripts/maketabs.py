import sys

## shell ##

assert len(sys.argv)==2, "Usage: <maketabs.py> <total points> <outf_name>"
tp = int(sys.argv[1])
outf_name = "../tab/{}".format(sys.argv[2])

## catching character traits ##

handeln = []
hp = []
wissen = []
wp = []
interagieren = []
ip = []

print("\nEigenschaften: Handeln, press 'q' for next")
while True:
    tr= input("Trait: ")
    if tr=="q":
        break
    else:
        handeln.append(tr)
        points = input("Points: ")
        hp.append(points)
        tp-=points
        print("{} points total remaining".format(tp))

print("\nEigenschaften: Wissen, press 'q' for next")
while True:
    tr = input("Trait: ")
    if tr=="q":
        break
    else:
        wissen.append(tr)
        points = input("Points: ")
        wp.append(points)

print("\nEigenschaften: Interagieren, press 'q' to finish")
while True:
    tr= input("Trait: ")
    if tr =="q":
        break
    else:
        interagieren.append(tr)
        points = input("Points: ")
        ip.append(points)

## writing to file ##

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


with open("{}.tex".format(outf_name),"w") as f:
    f.write("\\begin{tabular}{cccccc}\n")
    f.write("\\toprule\n")
    f.write("Handeln & & Wissen & & Interagieren & \\\\\n")
    f.write(str(int(totalpoints(hp)))+" & "+str(int(totalpoints(wp)))+" & "+str(int(totalpoints(ip)))+"\\\\\n")
    f.write("\midrule\n")
    for j in range(max(len(handeln),len(wissen),len(interagieren))):
        trait1, trait2, trait3 = str(printelem(handeln,j)),str(printelem(wissen,j)),str(printelem(interagieren,j))
        point1, point2, point3 = str(printelem(hp,j)),str(printelem(wp,j)),str(printelem(ip,j))
        f.write(trait1+" & "+point1+" & "+trait2+" & "+point2+" & "+trait3+" & "+point3+" \\\\\n")
    f.write("\\bottomrule\n")
    f.write("\end{tabular}")
