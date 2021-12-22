module Declination_angle

contains

  subroutine cal_declination_angle(days,delta)

    implicit none

    real(4), parameter      :: pi = 3.1415926536
    integer(4), intent(in)  :: days
    real(4), intent(out)    :: delta

    ! delta in radians
    delta = asin(sin(-23.44*pi/180)*cos(pi/180*(360/365.24*(days+10)+360/pi*0.0167*sin(pi/180*360/365.24*(days-2)))))
    print*, 'delta = ', delta*180/pi 

  end subroutine cal_declination_angle

end module Declination_angle
