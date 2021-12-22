subroutine Matrix_multip(a,b,c)

implicit none

real(4), dimension(5,3), intent(in)  :: a
real(4), dimension(3,5), intent(in)  :: b
real(4), dimension(5,5), intent(out) :: c

! matrix multiplication function
c = matmul(a, b)

end subroutine Matrix_multip
