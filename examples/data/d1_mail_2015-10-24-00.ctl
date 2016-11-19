dset ^d1_mail_2015-10-24-00.dat
options  byteswapped
undef 1.e30
title  OUTPUT FROM WRF V3.7.1 MODEL
pdef  320 340 lcc  49.000   35.000  160.500  170.500  60.00000  30.00000   35.00000  18000.000  18000.000
xdef 1669 linear  -32.68689   0.08108108
ydef  738 linear   16.57031   0.08108108
zdef    3 levels  
1000.00000
 925.00000
 850.00000
tdef   17 linear 00Z24OCT2015     180MN      
VARS   18
U              3  0  x-wind component (m s-1)
V              3  0  y-wind component (m s-1)
RHO            3  0  DENSITY (Kg m-3)
T2             1  0  TEMP at 2 M (K)
QVAPOR         3  0  Water vapor mixing ratio (kg kg-1)
QCLOUD         3  0  Cloud water mixing ratio (kg kg-1)
QNCLOUD        3  0  cloud water Number concentration (  kg(-1))
WT_TUR         3  0  Turbulent flux of temperature (K m s-1)
WQ_TUR         3  0  Turbulent flux of water vapor (- m s-1)
HGT            1  0  Terrain Height (m)
RAINC          1  0  ACCUMULATED TOTAL CUMULUS PRECIPITATION (mm)
RAINNC         1  0  ACCUMULATED TOTAL GRID SCALE PRECIPITATION (mm)
tk             3  0  Temperature (K)
td2            1  0  Dewpoint Temperature at 2m (C)
rh             3  0  Relative Humidity (%)
rh2            1  0  Relative Humidity at 2m (%)
u10m           1  0  Rotated wind component (m s-1)
v10m           1  0  Rotated wind component (m s-1)
ENDVARS
@ global String comment TITLE =  OUTPUT FROM WRF V3.7.1 MODEL
@ global String comment START_DATE = 2015-10-24_00:00:00
@ global String comment SIMULATION_START_DATE = 2015-10-24_00:00:00
@ global String comment WEST-EAST_GRID_DIMENSION =   321
@ global String comment SOUTH-NORTH_GRID_DIMENSION =   341
@ global String comment BOTTOM-TOP_GRID_DIMENSION =    31
@ global String comment DX =     18000.00
@ global String comment DY =     18000.00
@ global String comment SKEBS_ON =     0
@ global String comment SPEC_BDY_FINAL_MU =     0
@ global String comment USE_Q_DIABATIC =     0
@ global String comment GRIDTYPE = C
@ global String comment DIFF_OPT =     1
@ global String comment KM_OPT =     4
@ global String comment DAMP_OPT =     0
@ global String comment DAMPCOEF =         0.20
@ global String comment KHDIF =         0.00
@ global String comment KVDIF =         0.00
@ global String comment MP_PHYSICS =     9
@ global String comment RA_LW_PHYSICS =     4
@ global String comment RA_SW_PHYSICS =     4
@ global String comment SF_SFCLAY_PHYSICS =     1
@ global String comment SF_SURFACE_PHYSICS =     2
@ global String comment BL_PBL_PHYSICS =     8
@ global String comment CU_PHYSICS =     5
@ global String comment SF_LAKE_PHYSICS =     0
@ global String comment SURFACE_INPUT_SOURCE =     1
@ global String comment SST_UPDATE =     1
@ global String comment GRID_FDDA =     0
@ global String comment GFDDA_INTERVAL_M =     0
@ global String comment GFDDA_END_H =     0
@ global String comment GRID_SFDDA =     0
@ global String comment SGFDDA_INTERVAL_M =     0
@ global String comment SGFDDA_END_H =     0
@ global String comment HYPSOMETRIC_OPT =     2
@ global String comment USE_THETA_M =     0
@ global String comment SF_URBAN_PHYSICS =     0
@ global String comment SHCU_PHYSICS =     1
@ global String comment MFSHCONV =     0
@ global String comment FEEDBACK =     1
@ global String comment SMOOTH_OPTION =     0
@ global String comment SWRAD_SCAT =         1.00
@ global String comment W_DAMPING =     0
@ global String comment DT =       108.00
@ global String comment ADAPT_DT_START =       108.00
@ global String comment ADAPT_DT_MAX =      1800.00
@ global String comment ADAPT_DT_MIN =        18.00
@ global String comment RADT =        18.00
@ global String comment BLDT =         0.00
@ global String comment CUDT =         0.00
@ global String comment AER_OPT =     0
@ global String comment SWINT_OPT =     0
@ global String comment AER_TYPE =     1
@ global String comment AER_AOD550_OPT =     1
@ global String comment AER_ANGEXP_OPT =     1
@ global String comment AER_SSA_OPT =     1
@ global String comment AER_ASY_OPT =     1
@ global String comment AER_AOD550_VAL =         0.12
@ global String comment AER_ANGEXP_VAL =         1.30
@ global String comment AER_SSA_VAL =         0.00
@ global String comment AER_ASY_VAL =         0.00
@ global String comment MOIST_ADV_OPT =     1
@ global String comment SCALAR_ADV_OPT =     1
@ global String comment TKE_ADV_OPT =     1
@ global String comment DIFF_6TH_OPT =     0
@ global String comment DIFF_6TH_FACTOR =         0.12
@ global String comment OBS_NUDGE_OPT =     0
@ global String comment BUCKET_MM =        -1.00
@ global String comment BUCKET_J =        -1.00
@ global String comment PREC_ACC_DT =         0.00
@ global String comment SF_OCEAN_PHYSICS =     0
@ global String comment ISFTCFLX =     0
@ global String comment ISHALLOW =     0
@ global String comment ISFFLX =     1
@ global String comment ICLOUD =     1
@ global String comment ICLOUD_CU =     0
@ global String comment TRACER_PBLMIX =     1
@ global String comment SCALAR_PBLMIX =     0
@ global String comment YSU_TOPDOWN_PBLMIX =     0
@ global String comment GRAV_SETTLING =     0
@ global String comment DFI_OPT =     0
@ global String comment SIMULATION_INITIALIZATION_TYPE = REAL-DATA CASE
@ global String comment WEST-EAST_PATCH_START_UNSTAG =     1
@ global String comment WEST-EAST_PATCH_END_UNSTAG =   320
@ global String comment WEST-EAST_PATCH_START_STAG =     1
@ global String comment WEST-EAST_PATCH_END_STAG =   321
@ global String comment SOUTH-NORTH_PATCH_START_UNSTAG =     1
@ global String comment SOUTH-NORTH_PATCH_END_UNSTAG =   340
@ global String comment SOUTH-NORTH_PATCH_START_STAG =     1
@ global String comment SOUTH-NORTH_PATCH_END_STAG =   341
@ global String comment BOTTOM-TOP_PATCH_START_UNSTAG =     1
@ global String comment BOTTOM-TOP_PATCH_END_UNSTAG =    30
@ global String comment BOTTOM-TOP_PATCH_START_STAG =     1
@ global String comment BOTTOM-TOP_PATCH_END_STAG =    31
@ global String comment GRID_ID =     1
@ global String comment PARENT_ID =     1
@ global String comment I_PARENT_START =     1
@ global String comment J_PARENT_START =     1
@ global String comment PARENT_GRID_RATIO =     1
@ global String comment CEN_LAT =        49.00
@ global String comment CEN_LON =        35.00
@ global String comment TRUELAT1 =        30.00
@ global String comment TRUELAT2 =        60.00
@ global String comment MOAD_CEN_LAT =        49.00
@ global String comment STAND_LON =        35.00
@ global String comment POLE_LAT =        90.00
@ global String comment POLE_LON =         0.00
@ global String comment GMT =         0.00
@ global String comment JULYR =  2015
@ global String comment JULDAY =   297
@ global String comment MAP_PROJ =     1
@ global String comment MAP_PROJ_CHAR = Lambert Conformal
@ global String comment MMINLU = MODIFIED_IGBP_MODIS_NOAH
@ global String comment NUM_LAND_CAT =    21
@ global String comment ISWATER =    17
@ global String comment ISLAKE =    21
@ global String comment ISICE =    15
@ global String comment ISURBAN =    13
@ global String comment ISOILWATER =    14
