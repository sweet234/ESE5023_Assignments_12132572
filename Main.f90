Program Main

Implicit none

integer                 :: u, i, j
real(4), dimension(5,3) :: M
real(4), dimension(3,5) :: N
real(4), dimension(5,5) :: MN

u = 50

!---------------------------------------
! M matrix
!---------------------------------------
open(unit=u, file='M.dat', status='old')

! read data by implicit do loop
read(u,*) ((M(i,j),j=1,3),i=1,5)

close(u)

! display the values
print *, 'M matrix'

do i = 1,5
! do j = 1,3
    write(*,*) M(i,:)
! enddo
enddo

!---------------------------------------
! N matrix
!---------------------------------------
open(unit=u, file='N.dat', status='old')

! read data by implicit do loop
read(u,*) ((N(i,j),j=1,5),i=1,3)

close(u)

! display the values
print *, 'N matrix'

do i = 1,3
! do j = 1,5
    write(*,*) N(i,:)
! enddo
enddo


! call subroutine Matrix_multip()
call Matrix_multip(M,N,MN)

write(*,*) 'shape MN:', shape(MN)

! write the values to a new file
open(unit=u, file='MN.dat', status='replace')
do i = 1,5
  write(u,'(f9.2)') MN(i,:)
enddo

close(u)

End Program Main

