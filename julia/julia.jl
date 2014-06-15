"""
Performance test for Julia

Dan Kolbman 2014
"""

n     = 1000  # Partcles
steps = 10000 # How long to simulate

# Create particles in a 3D box of size 1
pos = rand(n,3)
for i = 1:steps   # Iterate over the simulation
  for part = pos  # Update every coord
    # Scale to 0.1 max
    part += 0.2*(rand()-1)
    # Periodic boundaries
    part -= floor(part)
  end
end
f = open("out.dat","w")
writedlm(f, pos)
close(f)
