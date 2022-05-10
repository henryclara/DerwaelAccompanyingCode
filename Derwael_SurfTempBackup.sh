#!/bin/bash

gmt grdconvert SurfTempInit.nc -R900750/1007590/1080000/2065720 -GDerval_SurfTemp.nc -V

cdo addc,273.15 Derval_SurfTemp.nc Derval_SurfTemp2.nc
#cdo addc,273.15 SurfTempInit.nc Derval_SurfTemp2.nc

cdo chname,z,tsurf Derval_SurfTemp2.nc Derwael_SurfTemp.nc
