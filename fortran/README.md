Results
=======

Intel(R) Core(TM) i5-3570K CPU @ 3.40GHz

    % gfortran particles.f -o test1
    % time ./test1 
    ./test1  6.52s user 0.00s system 100% cpu 6.520 total
    % gfortran particles.f -O1 -o test2
    % time ./test2 
    ./test2  4.64s user 0.00s system 99% cpu 4.640 total
    % gfortran particles.f -O2 -o test3
    % time ./test3
    ./test3  4.50s user 0.00s system 99% cpu 4.498 total
    % gfortran particles.f -O3 -o test4
    % time ./test4
    ./test4  4.55s user 0.00s system 99% cpu 4.551 total
    % gfortran particles.f -Ofast -o test5
    % time ./test5
    ./test5  4.51s user 0.00s system 100% cpu 4.512 total

