Results
=======


    % gcc particles.c -lm -o test1
    % time ./test1
    ./test1  4.03s user 0.00s system 100% cpu 4.029 total
    % gcc particles.c -lm -O1 -o test2
    % time ./test2
    ./test2  2.87s user 0.00s system 99% cpu 2.868 total
    % gcc particles.c -lm -O2 -o test3
    % time ./test3 
    ./test3  2.92s user 0.00s system 99% cpu 2.919 total
    % gcc particles.c -lm -O3 -o test4
    % time ./test4 
    ./test4  2.92s user 0.00s system 100% cpu 2.920 total
    % gcc particles.c -lm -Ofast -o test5
    % time ./test5
    ./test5  3.88s user 0.00s system 100% cpu 3.886 total

