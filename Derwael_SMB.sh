#!/bin/bash

# SMB

gmt grdconvert  RBIS_SMB_5km_in_m.nc                              -R920750/997590/1880000/1965720 -GSMB_Derval_5_5_km.nc        -V

cdo chname,z,smb SMB_Derval_5_5_km.nc                                Derwael_SMB.nc


