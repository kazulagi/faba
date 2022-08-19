use faba

type(IO_) :: f
type(Random_) :: random

call f%open('white_noize/txt')
do i_i=1,1000
    call f%write(random%gauss(mu=0.0d0,sigma=1.0d0) )
enddo
do i_i=1,1000
    call f%write(random%gauss(mu=0.50d0,sigma=2.0d0)+sin(i_i/10.0d0) )
enddo
call f%close()
call f%plot(option="with lines")

end