#!/bin/bash

gmt grdconvert SurfTempInit.nc -R920750/997590/1880000/1965720 -GDerval_SurfTemp.nc -V

cdo addc,273.15 Derval_SurfTemp.nc Derval_SurfTemp2.nc

cdo chname,z,tsurf Derval_SurfTemp2.nc Derwael_SurfTemp.nc
