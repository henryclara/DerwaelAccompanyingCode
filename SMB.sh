gmt grdsample Derwael_SMB.nc -I3000 -GDerwael_SMB_Smoothed1.nc

cdo chname,z,smb Derwael_SMB_Smoothed1.nc Derwael_SMB_Smoothed.nc
