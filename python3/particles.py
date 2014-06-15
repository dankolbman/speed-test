"""
Test python 3 performance.

Dan Kolbman 2014
"""

import numpy.random as nprand
import math

n     = 10000  # particles
steps = 10000  # How long to simulate

# Create particles in 3D box of 1x1x1
pos = nprand.rand(n, 3)

for i in range(steps):  # Run all steps
  for part in pos:      # Move each particle
    # Scale it down by 0.1
    part += 0.2*(nprand.rand(3) - [0.5, 0.5, 0.5])
    # Apply periodicity
    part -= [ math.floor(x) for x in part ]

# Write the final positions
f = open('out.dat', 'w')
for part in pos:
  f.write(str(part[0])+' '+str(part[1])+' '+str(part[2])+'\n')
f.close()
