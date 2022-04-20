#Maneira confusa 

l = []
l1 = []
l2 = []

l1.append("MIECT")
l1.append("LEI")
l1.append("MEI")
l2.append("MSI")
l2.append("MIEET")

l.extend(l1)
l.extend(l2)

print(len(l))
print(l)


#Maneira recomendada

l = ["MIECT", "LEI", "MEI", "MSI", "MIEET"]
print(l)
print(l[0])
print(l[0:2])

print(sorted(l))

import sys

print(sys.argv)
