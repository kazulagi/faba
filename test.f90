use faba
implicit none

type(IO_) :: f

call f%open("hello.txt")
call f%write([2,2])
call f%close()

end