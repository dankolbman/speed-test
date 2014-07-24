"""
Performance test for Julia

Dan Kolbman 2014
"""
n     = 10000 # Partcles
steps = 10000 # How long to simulate

# Create particles in a 3D box of size 1
pos = rand(n,3)
for i = 1:steps   # Iterate over the simulation
  # This is 20x faster than iterating each particle
  pos += (2.*rand(n,3).-1.0).*0.2
  pos -= floor(pos)
end
f = open("out.dat","w")
writedlm(f, pos)
close(f)
