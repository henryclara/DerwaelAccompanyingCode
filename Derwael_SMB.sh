#!/bin/bash

# SMB

gmt grdconvert  RBIS_SMB_5km_in_m.nc                              -R919750/998590/1879000/1966720 -GSMB_Derwael_5_5_km.nc        -V
# gmt grdconvert  RBIS_SMB_5km_in_m.nc                              -R920750/997590/1880000/1965720 -GSMB_Derval_5_5_km.nc        -V

cdo chname,z,smb SMB_Derwael_5_5_km.nc                                Derwael_SMB.nc


