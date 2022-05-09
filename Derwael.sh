#!/bin/bash

# Surface, thickness, bed, mask

gmt grdconvert "BedMachineAntarctica_2020-07-15_v02.nc?surface"   -R920750/997590/1880000/1965720 -GDerwael_surface.nc      -V
gmt grdconvert "BedMachineAntarctica_2020-07-15_v02.nc?thickness" -R920750/997590/1880000/1965720 -GDerwael_thickness.nc    -V
gmt grdconvert "BedMachineAntarctica_2020-07-15_v02.nc?bed"       -R920750/997590/1880000/1965720 -GDerwael_bed.nc          -V
gmt grdconvert "BedMachineAntarctica_2020-07-15_v02.nc?mask"      -R920750/997590/1880000/1965720 -GDerwael_mask.nc         -V

# Velocity

gmt grdconvert "antarctic_ice_vel_phase_map_v01.nc?VX"            -R920750/997590/1880000/1965720 -GDerwael_vx.nc -V
gmt grdconvert "antarctic_ice_vel_phase_map_v01.nc?VY"            -R920750/997590/1880000/1965720 -GDerwael_vy.nc -V

cdo sub Derwael_surface.nc Derwael_thickness.nc                      Derwael_base_s.nc
cdo chname,surface,zb Derwael_base_s.nc                              Derwael_base.nc
cdo chname,surface,zs Derwael_surface.nc                             Derwael_surface2.nc
cdo chname,bed,bedrock Derwael_bed.nc 		                     Derwael_bed2.nc
cdo chname,VX,vx Derwael_vx.nc                                       Derwael_vx2.nc
cdo chname,VY,vy Derwael_vy.nc                                       Derwael_vy2.nc

cdo merge Derwael_surface2.nc Derwael_thickness.nc Derwael_base.nc Derwael_bed2.nc Derwael_mask.nc Derwael_vx2.nc Derwael_vy2.nc Derwael.nc
