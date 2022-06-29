#!/bin/bash

cdo chname,zb,zb0 Derwael.nc                       Derwael0.nc
cdo chname,zs,zs0 Derwael0.nc                      DerwaelBC.nc

cdo merge DerwaelBC.nc Derwael.nc DerwaelBCs.nc
