module Solar_hour_angle

contains

  subroutine cal_solar_hour_angle(long,TZ,days,LST,h)

    implicit none

    real(4), parameter     :: pi = 3.1415926536
    real(4), intent(in)    :: long, TZ, LST                   ! longitude, time zone, local solar time
    integer(4), intent(in) :: days                            ! no. days since 01-01
    real(4), intent(out)   :: h                               ! solar hour angle
    real(4)                :: gamma, EoT, Offset, LST_corr    ! fraction year, equation of time, offset, corrected LST




    ! gamma in radians
    gamma = 2*pi/365*(days-1+(LST-12)/24)

    ! EoT in minutes
    EoT = 229.18*(0.000075+0.001868*cos(gamma)-0.032077*sin(gamma)-0.014615*cos(2*gamma)-0.040849*sin(2*gamma))

    ! offset in minutes
    Offset = EoT + 4*(long - 15*TZ)

    ! LST_corr in hours
    LST_corr = LST + Offset/60

    ! h in degrees
    h = 15*(LST_corr - 12)
    print*, 'h = ', h

  end subroutine cal_solar_hour_angle

end module Solar_hour_angle

