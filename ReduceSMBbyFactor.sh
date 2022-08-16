#!/bin/bash

cdo -mulc,0.9 Derwael_SMB_Smoothed.nc Derwael_SMB_Smoothed09.nc
cdo -mulc,0.8 Derwael_SMB_Smoothed.nc Derwael_SMB_Smoothed08.nc
cdo -mulc,0.7 Derwael_SMB_Smoothed.nc Derwael_SMB_Smoothed07.nc
cdo -mulc,0.6 Derwael_SMB_Smoothed.nc Derwael_SMB_Smoothed06.nc
cdo -mulc,0.5 Derwael_SMB_Smoothed.nc Derwael_SMB_Smoothed05.nc
