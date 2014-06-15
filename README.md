Speed-Test
==========

Testing the performance of various languages.

The procedure:

1. Generate `10000 particles` in a 3D box of size 1
2. Move each particle randomly, wrapping it to fit in the box, for `10000 steps`
3. Write each final position to a file

Bench Marks
==========

- 2.87s gcc -O2

- 4.50s gfortran with optimization flags

- 6.52s gfortran

- Julia - 88.36s

- Python 3.4 - 1769.32s


Dependencies
==========

Python 3 - Uses numpy to generate random matrices (more efficient than 
using random)
