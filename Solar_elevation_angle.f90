program Solar_elevation_angle

use Solar_hour_angle
use Declination_angle

implicit none

real(4), parameter :: pi = 3.1415926536
! latitude, longitude, time zone, local solar time, solar hour angle, declination angle, solar elevation angle
real(4)            :: lat, lon, TZ, LST, h, delta, SEA
integer(4)         :: days


lat = 22.542883
lon = 114.062996
TZ = 8
LST = 10.533333
days = 364


call cal_declination_angle(days, delta)

call cal_solar_hour_angle(lon, TZ, days, LST, h)

! SEA in degrees
SEA = asin(sin(lat*pi/180)*sin(delta)+cos(lat*pi/180)*cos(delta)*cos(h*pi/180))*180/pi
print*, 'SEA = ', SEA

end program Solar_elevation_angle
