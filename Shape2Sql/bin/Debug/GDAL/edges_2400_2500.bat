@echo off

set SDK_ROOT=%~dp0
set SDK_ROOT=%SDK_ROOT:\\=\%

echo %SDK_ROOT%

if "%1" == "setenv" goto setenv

%comspec% /k "%SDK_ROOT%edges_2400_2500.bat" setenv %1
goto processdata
goto exit

:setenv
@echo Setting environment for using the GDAL and MapServer tools.

if "%2"=="hideoci" goto hideoci

set ocipath=0
set _path="%PATH:;=" "%"
for %%p in (%_path%) do if not "%%~p"=="" if exist %%~p\oci.dll set ocipath=1

if "%ocipath%"=="0" goto hideoci
@echo WARNING: If you encounter problems with missing oci libraries then type:
@echo   SDKShell hideoci
goto setenv2

:hideoci
@echo Hiding the OCI plugin library.
if not exist "%SDK_ROOT%bin\gdal\plugins-optional" mkdir "%SDK_ROOT%bin\gdal\plugins-optional"
if exist "%SDK_ROOT%bin\gdal\plugins\ogr_OCI.dll" move "%SDK_ROOT%bin\gdal\plugins\ogr_OCI.dll" "%SDK_ROOT%bin\gdal\plugins-optional\ogr_OCI.dll"
if exist "%SDK_ROOT%bin\gdal\plugins\gdal_GEOR.dll" move "%SDK_ROOT%bin\gdal\plugins\gdal_GEOR.dll" "%SDK_ROOT%bin\gdal\plugins-optional\gdal_GEOR.dll"

:setenv2
SET "PATH=%SDK_ROOT%bin;%SDK_ROOT%bin\gdal\python\osgeo;%SDK_ROOT%bin\proj\apps;%SDK_ROOT%bin\gdal\apps;%SDK_ROOT%bin\ms\apps;%SDK_ROOT%bin\gdal\csharp;%SDK_ROOT%bin\ms\csharp;%SDK_ROOT%bin\curl;%PATH%"
SET "GDAL_DATA=%SDK_ROOT%bin\gdal-data"
SET "GDAL_DRIVER_PATH=%SDK_ROOT%bin\gdal\plugins"
SET "PYTHONPATH=%SDK_ROOT%bin\gdal\python;%SDK_ROOT%bin\ms\python"
SET "PROJ_LIB=%SDK_ROOT%bin\proj\SHARE"

:processdata
@echo Processing File 1 of 100: tl_2015_46079_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46079_edges.shp"
@echo Processing File 2 of 100: tl_2015_46081_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46081_edges.shp"
@echo Processing File 3 of 100: tl_2015_46083_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46083_edges.shp"
@echo Processing File 4 of 100: tl_2015_46085_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46085_edges.shp"
@echo Processing File 5 of 100: tl_2015_46087_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46087_edges.shp"
@echo Processing File 6 of 100: tl_2015_46089_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46089_edges.shp"
@echo Processing File 7 of 100: tl_2015_46091_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46091_edges.shp"
@echo Processing File 8 of 100: tl_2015_46093_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46093_edges.shp"
@echo Processing File 9 of 100: tl_2015_46095_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46095_edges.shp"
@echo Processing File 10 of 100: tl_2015_46097_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46097_edges.shp"
@echo Processing File 11 of 100: tl_2015_46099_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46099_edges.shp"
@echo Processing File 12 of 100: tl_2015_46101_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46101_edges.shp"
@echo Processing File 13 of 100: tl_2015_46102_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46102_edges.shp"
@echo Processing File 14 of 100: tl_2015_46103_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46103_edges.shp"
@echo Processing File 15 of 100: tl_2015_46105_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46105_edges.shp"
@echo Processing File 16 of 100: tl_2015_46107_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46107_edges.shp"
@echo Processing File 17 of 100: tl_2015_46109_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46109_edges.shp"
@echo Processing File 18 of 100: tl_2015_46111_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46111_edges.shp"
@echo Processing File 19 of 100: tl_2015_46115_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46115_edges.shp"
@echo Processing File 20 of 100: tl_2015_46117_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46117_edges.shp"
@echo Processing File 21 of 100: tl_2015_46119_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46119_edges.shp"
@echo Processing File 22 of 100: tl_2015_46121_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46121_edges.shp"
@echo Processing File 23 of 100: tl_2015_46123_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46123_edges.shp"
@echo Processing File 24 of 100: tl_2015_46125_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46125_edges.shp"
@echo Processing File 25 of 100: tl_2015_46127_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46127_edges.shp"
@echo Processing File 26 of 100: tl_2015_46129_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46129_edges.shp"
@echo Processing File 27 of 100: tl_2015_46135_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46135_edges.shp"
@echo Processing File 28 of 100: tl_2015_46137_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_46137_edges.shp"
@echo Processing File 29 of 100: tl_2015_47001_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47001_edges.shp"
@echo Processing File 30 of 100: tl_2015_47003_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47003_edges.shp"
@echo Processing File 31 of 100: tl_2015_47005_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47005_edges.shp"
@echo Processing File 32 of 100: tl_2015_47007_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47007_edges.shp"
@echo Processing File 33 of 100: tl_2015_47009_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47009_edges.shp"
@echo Processing File 34 of 100: tl_2015_47011_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47011_edges.shp"
@echo Processing File 35 of 100: tl_2015_47013_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47013_edges.shp"
@echo Processing File 36 of 100: tl_2015_47015_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47015_edges.shp"
@echo Processing File 37 of 100: tl_2015_47017_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47017_edges.shp"
@echo Processing File 38 of 100: tl_2015_47019_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47019_edges.shp"
@echo Processing File 39 of 100: tl_2015_47021_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47021_edges.shp"
@echo Processing File 40 of 100: tl_2015_47023_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47023_edges.shp"
@echo Processing File 41 of 100: tl_2015_47025_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47025_edges.shp"
@echo Processing File 42 of 100: tl_2015_47027_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47027_edges.shp"
@echo Processing File 43 of 100: tl_2015_47029_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47029_edges.shp"
@echo Processing File 44 of 100: tl_2015_47031_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47031_edges.shp"
@echo Processing File 45 of 100: tl_2015_47033_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47033_edges.shp"
@echo Processing File 46 of 100: tl_2015_47035_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47035_edges.shp"
@echo Processing File 47 of 100: tl_2015_47037_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47037_edges.shp"
@echo Processing File 48 of 100: tl_2015_47039_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47039_edges.shp"
@echo Processing File 49 of 100: tl_2015_47041_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47041_edges.shp"
@echo Processing File 50 of 100: tl_2015_47043_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47043_edges.shp"
@echo Processing File 51 of 100: tl_2015_47045_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47045_edges.shp"
@echo Processing File 52 of 100: tl_2015_47047_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47047_edges.shp"
@echo Processing File 53 of 100: tl_2015_47049_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47049_edges.shp"
@echo Processing File 54 of 100: tl_2015_47051_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47051_edges.shp"
@echo Processing File 55 of 100: tl_2015_47053_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47053_edges.shp"
@echo Processing File 56 of 100: tl_2015_47055_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47055_edges.shp"
@echo Processing File 57 of 100: tl_2015_47057_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47057_edges.shp"
@echo Processing File 58 of 100: tl_2015_47059_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47059_edges.shp"
@echo Processing File 59 of 100: tl_2015_47061_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47061_edges.shp"
@echo Processing File 60 of 100: tl_2015_47063_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47063_edges.shp"
@echo Processing File 61 of 100: tl_2015_47065_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47065_edges.shp"
@echo Processing File 62 of 100: tl_2015_47067_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47067_edges.shp"
@echo Processing File 63 of 100: tl_2015_47069_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47069_edges.shp"
@echo Processing File 64 of 100: tl_2015_47071_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47071_edges.shp"
@echo Processing File 65 of 100: tl_2015_47073_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47073_edges.shp"
@echo Processing File 66 of 100: tl_2015_47075_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47075_edges.shp"
@echo Processing File 67 of 100: tl_2015_47077_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47077_edges.shp"
@echo Processing File 68 of 100: tl_2015_47079_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47079_edges.shp"
@echo Processing File 69 of 100: tl_2015_47081_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47081_edges.shp"
@echo Processing File 70 of 100: tl_2015_47083_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47083_edges.shp"
@echo Processing File 71 of 100: tl_2015_47085_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47085_edges.shp"
@echo Processing File 72 of 100: tl_2015_47087_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47087_edges.shp"
@echo Processing File 73 of 100: tl_2015_47089_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47089_edges.shp"
@echo Processing File 74 of 100: tl_2015_47091_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47091_edges.shp"
@echo Processing File 75 of 100: tl_2015_47093_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47093_edges.shp"
@echo Processing File 76 of 100: tl_2015_47095_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47095_edges.shp"
@echo Processing File 77 of 100: tl_2015_47097_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47097_edges.shp"
@echo Processing File 78 of 100: tl_2015_47099_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47099_edges.shp"
@echo Processing File 79 of 100: tl_2015_47101_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47101_edges.shp"
@echo Processing File 80 of 100: tl_2015_47103_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47103_edges.shp"
@echo Processing File 81 of 100: tl_2015_47105_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47105_edges.shp"
@echo Processing File 82 of 100: tl_2015_47107_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47107_edges.shp"
@echo Processing File 83 of 100: tl_2015_47109_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47109_edges.shp"
@echo Processing File 84 of 100: tl_2015_47111_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47111_edges.shp"
@echo Processing File 85 of 100: tl_2015_47113_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47113_edges.shp"
@echo Processing File 86 of 100: tl_2015_47115_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47115_edges.shp"
@echo Processing File 87 of 100: tl_2015_47117_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47117_edges.shp"
@echo Processing File 88 of 100: tl_2015_47119_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47119_edges.shp"
@echo Processing File 89 of 100: tl_2015_47121_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47121_edges.shp"
@echo Processing File 90 of 100: tl_2015_47123_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47123_edges.shp"
@echo Processing File 91 of 100: tl_2015_47125_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47125_edges.shp"
@echo Processing File 92 of 100: tl_2015_47127_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47127_edges.shp"
@echo Processing File 93 of 100: tl_2015_47129_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47129_edges.shp"
@echo Processing File 94 of 100: tl_2015_47131_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47131_edges.shp"
@echo Processing File 95 of 100: tl_2015_47133_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47133_edges.shp"
@echo Processing File 96 of 100: tl_2015_47135_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47135_edges.shp"
@echo Processing File 97 of 100: tl_2015_47137_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47137_edges.shp"
@echo Processing File 98 of 100: tl_2015_47139_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47139_edges.shp"
@echo Processing File 99 of 100: tl_2015_47141_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47141_edges.shp"
@echo Processing File 100 of 100: tl_2015_47143_edges.shp
ogr2ogr -progress -append -skipfailures -nln "edges_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_47143_edges.shp"

:exit