c----------------------------------------------------------
c     Test the performance of fortran
c
c     Dan Kolbman 2014
c----------------------------------------------------------

      program fortran
      parameter( n = 1000)      ! Number of particles
      parameter( steps = 10000) ! Number of simulation steps
      integer i, part   ! Iterators
      real*8 pos(n,3)   ! Particle positions
      real*8 move

c     Assign ititial positions
      do part=1,n
        do x=1,3
          CALL RANDOM_NUMBER(pos(part,x))
        enddo
      enddo

c     Iterate
      do i=1,steps
        do part=1,n
          do x=1,3
            CALL RANDOM_NUMBER(move)
            pos(part,x)=pos(part,x)+0.2*move
            pos(part,x)=pos(part,x)-floor(pos(part,x))
          enddo
        enddo
      enddo

c     Write results
      open(unit=8770,file='out.dat')
c 10   format(a5,a5,a5)
c  10  format(a5,t8,a5,t15,a4,t30,a5,t50,a5,t70,a7)
 10   format(f0.17,t20,f0.17,t40,f0.17)
      do part=1,n
        write(8770,10) pos(part,1), pos(part,2), pos(part,3)
      enddo
      close(8770)
      end
