#!/bin/bash

#cdo chname,zb,zb0 Derwael.nc                                      Derwael0.nc
#cdo chname,zs,zs0 Derwael0.nc                                     DerwaelBC.nc
cdo chname,__xarray_dataarray_variable__,zs0 DerwaelUpper.nc       DerwaelUpper2.nc
cdo chname,__xarray_dataarray_variable__,zb0 DerwaelLower.nc       DerwaelLower2.nc

#cdo merge DerwaelNewBedrock.nc DerwaelBC.nc Derwael.nc            DerwaelBCs2.nc
cdo merge DerwaelNewBedrock.nc DerwaelUpper2.nc DerwaelLower2.nc Derwael.nc DerwaelBCs2.nc

cdo chname,bedrock,bedrockold DerwaelBCs2.nc                      DerwaelBCs3.nc
cdo chname,__xarray_dataarray_variable__,bedrock DerwaelBCs3.nc   DerwaelBCs4.nc
cdo chname,zs,zsold DerwaelBCs4.nc                                DerwaelBCs5.nc
cdo chname,zb,zbold DerwaelBCs5.nc                                DerwaelBCs6.nc

cdo merge DerwaelUpper.nc DerwaelBCs6.nc                          DerwaelBCs7.nc
cdo chname,__xarray_dataarray_variable__,zs DerwaelBCs7.nc        DerwaelBCs8.nc
cdo merge DerwaelLower.nc DerwaelBCs8.nc                          DerwaelBCs9.nc
cdo chname,__xarray_dataarray_variable__,zb DerwaelBCs9.nc        DerwaelBCs.nc


