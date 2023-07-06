#!/usr/bin/env python

import sys
import numpy as np

if len(sys.argv)!=2:
    sys.exit("\nUsage: maketabs.py <character name>\n")
else:
    outfile = "../00-tables/"+sys.argv[1]+".tex"

example_text = open("../00-tables/max-mustermann.tex").readlines()
header, footer = example_text[:12], example_text[-4:]

# recording talents
talents = [[],[],[]]
themes = ["Handeln","Wissen","Soziales"]

for i in range(len(themes)):
    while True:
        user_input = input(f"Input talents for {themes[i]}: ")
        if user_input == "x":
            break
        else:
            talents[i].append(user_input)

maxtraits = max([len(talents[0]),len(talents[1]),len(talents[2])])
handeln, handeln_points = [trait.split()[0] for trait in talents[0]], [trait.split()[1] for trait in talents[0]]
handeln_points.extend([""]*(maxtraits-len(handeln))), handeln.extend([""]*(maxtraits-len(handeln)))
wissen, wissen_points = [trait.split()[0] for trait in talents[1]], [trait.split()[1] for trait in talents[1]]
wissen_points.extend([""]*(maxtraits-len(wissen))), wissen.extend([""]*(maxtraits-len(wissen)))
soziales, soziales_points = [trait.split()[0] for trait in talents[2]], [trait.split()[1] for trait in talents[2]]
soziales_points.extend([""]*(maxtraits-len(soziales))), soziales.extend([""]*(maxtraits-len(soziales)))

talent_lines = [handeln[i]+" & "+handeln_points[i]+" & "+wissen[i]+" & "+wissen_points[i]+" & "+soziales[i]+" & "+soziales_points[i]+" \\\\" for i in range(maxtraits)]

with open(outfile,"w") as new_table:
    for line in header:
        new_table.write(line)
    for line in talent_lines:
        new_table.write(line+"\n")
    new_table.write("\n")
    for line in footer:
        new_table.write(line)
