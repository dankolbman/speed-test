/***
* Evaluate C performance
*
* Dan Kolbman 2014
**/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
  int n = 10000;        // Number of particles
  int steps = 10000;    // How long to iterate
  float pos[n][3];      // Particle positions
  int i,j, part;
  unsigned int seed = (unsigned int)time(NULL);
  srand(seed);  
  // Initialize positions in a 3D box of size 1
  for (part=0;part<n;part++) {
    for(j=0;j<3;j++) {
      pos[part][j]=rand();
    }
  }
  // Iterate through the simulation
  for (i=0;i<steps;i++) {
    // Move each particle
    for (part=0;part<n;part++) {
      for (j=0;j<3;j++) {
        pos[part][j] += 0.2*(rand()/(RAND_MAX+1.0)-1.0);
        pos[part][j] -= floor(pos[part][j]);
      }
    }
  }
  // Write to file
  FILE *fout;
  fout = fopen("out.dat","w");
  for (part=0;part<n;part++) {
    fprintf(fout,"%f8\t%f8\t%f8\n",pos[part][0],pos[part][1],pos[part][2]);
  }
  fclose(fout);
  return 0;
}
