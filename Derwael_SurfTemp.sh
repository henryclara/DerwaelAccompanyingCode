#!/bin/bash

gmt grdconvert SurfTempInit.nc -R920750/997590/1880000/1965720 -GDerval_SurfTemp.nc -V

cdo chname,z,tsurf Derval_SurfTemp.nc Derwael_SurfTemp.nc
