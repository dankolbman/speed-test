Results
=======

Intel(R) Core(TM) i5-3570K CPU @ 3.40GHz

    % gfortran fortran.f -o test1
    % time ./test1 
    ./test1  0.70s user 0.00s system 99% cpu 0.708 total
    % gfortran fortran.f -o test2 -O1
    % time ./test2 
    ./test2  0.52s user 0.00s system 99% cpu 0.524 total
    % gfortran fortran.f -o test3 -O2
    % time ./test3
    ./test3  0.51s user 0.00s system 99% cpu 0.509 total
    % gfortran fortran.f -o test4 -O3
    % time ./test4
    ./test4  0.51s user 0.00s system 99% cpu 0.510 total

