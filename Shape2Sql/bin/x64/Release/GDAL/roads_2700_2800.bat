@echo off

set SDK_ROOT=%~dp0
set SDK_ROOT=%SDK_ROOT:\\=\%

echo %SDK_ROOT%

if "%1" == "setenv" goto setenv

%comspec% /k "%SDK_ROOT%roads_2700_2800.bat" setenv %1
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
@echo Processing File 1 of 100: tl_2015_48355_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48355_roads.shp"
@echo Processing File 2 of 100: tl_2015_48357_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48357_roads.shp"
@echo Processing File 3 of 100: tl_2015_48359_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48359_roads.shp"
@echo Processing File 4 of 100: tl_2015_48361_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48361_roads.shp"
@echo Processing File 5 of 100: tl_2015_48363_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48363_roads.shp"
@echo Processing File 6 of 100: tl_2015_48365_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48365_roads.shp"
@echo Processing File 7 of 100: tl_2015_48367_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48367_roads.shp"
@echo Processing File 8 of 100: tl_2015_48369_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48369_roads.shp"
@echo Processing File 9 of 100: tl_2015_48371_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48371_roads.shp"
@echo Processing File 10 of 100: tl_2015_48373_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48373_roads.shp"
@echo Processing File 11 of 100: tl_2015_48375_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48375_roads.shp"
@echo Processing File 12 of 100: tl_2015_48377_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48377_roads.shp"
@echo Processing File 13 of 100: tl_2015_48379_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48379_roads.shp"
@echo Processing File 14 of 100: tl_2015_48381_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48381_roads.shp"
@echo Processing File 15 of 100: tl_2015_48383_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48383_roads.shp"
@echo Processing File 16 of 100: tl_2015_48385_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48385_roads.shp"
@echo Processing File 17 of 100: tl_2015_48387_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48387_roads.shp"
@echo Processing File 18 of 100: tl_2015_48389_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48389_roads.shp"
@echo Processing File 19 of 100: tl_2015_48391_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48391_roads.shp"
@echo Processing File 20 of 100: tl_2015_48393_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48393_roads.shp"
@echo Processing File 21 of 100: tl_2015_48395_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48395_roads.shp"
@echo Processing File 22 of 100: tl_2015_48397_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48397_roads.shp"
@echo Processing File 23 of 100: tl_2015_48399_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48399_roads.shp"
@echo Processing File 24 of 100: tl_2015_48401_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48401_roads.shp"
@echo Processing File 25 of 100: tl_2015_48403_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48403_roads.shp"
@echo Processing File 26 of 100: tl_2015_48405_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48405_roads.shp"
@echo Processing File 27 of 100: tl_2015_48407_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48407_roads.shp"
@echo Processing File 28 of 100: tl_2015_48409_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48409_roads.shp"
@echo Processing File 29 of 100: tl_2015_48411_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48411_roads.shp"
@echo Processing File 30 of 100: tl_2015_48413_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48413_roads.shp"
@echo Processing File 31 of 100: tl_2015_48415_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48415_roads.shp"
@echo Processing File 32 of 100: tl_2015_48417_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48417_roads.shp"
@echo Processing File 33 of 100: tl_2015_48419_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48419_roads.shp"
@echo Processing File 34 of 100: tl_2015_48421_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48421_roads.shp"
@echo Processing File 35 of 100: tl_2015_48423_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48423_roads.shp"
@echo Processing File 36 of 100: tl_2015_48425_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48425_roads.shp"
@echo Processing File 37 of 100: tl_2015_48427_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48427_roads.shp"
@echo Processing File 38 of 100: tl_2015_48429_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48429_roads.shp"
@echo Processing File 39 of 100: tl_2015_48431_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48431_roads.shp"
@echo Processing File 40 of 100: tl_2015_48433_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48433_roads.shp"
@echo Processing File 41 of 100: tl_2015_48435_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48435_roads.shp"
@echo Processing File 42 of 100: tl_2015_48437_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48437_roads.shp"
@echo Processing File 43 of 100: tl_2015_48439_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48439_roads.shp"
@echo Processing File 44 of 100: tl_2015_48441_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48441_roads.shp"
@echo Processing File 45 of 100: tl_2015_48443_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48443_roads.shp"
@echo Processing File 46 of 100: tl_2015_48445_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48445_roads.shp"
@echo Processing File 47 of 100: tl_2015_48447_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48447_roads.shp"
@echo Processing File 48 of 100: tl_2015_48449_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48449_roads.shp"
@echo Processing File 49 of 100: tl_2015_48451_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48451_roads.shp"
@echo Processing File 50 of 100: tl_2015_48453_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48453_roads.shp"
@echo Processing File 51 of 100: tl_2015_48455_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48455_roads.shp"
@echo Processing File 52 of 100: tl_2015_48457_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48457_roads.shp"
@echo Processing File 53 of 100: tl_2015_48459_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48459_roads.shp"
@echo Processing File 54 of 100: tl_2015_48461_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48461_roads.shp"
@echo Processing File 55 of 100: tl_2015_48463_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48463_roads.shp"
@echo Processing File 56 of 100: tl_2015_48465_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48465_roads.shp"
@echo Processing File 57 of 100: tl_2015_48467_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48467_roads.shp"
@echo Processing File 58 of 100: tl_2015_48469_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48469_roads.shp"
@echo Processing File 59 of 100: tl_2015_48471_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48471_roads.shp"
@echo Processing File 60 of 100: tl_2015_48473_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48473_roads.shp"
@echo Processing File 61 of 100: tl_2015_48475_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48475_roads.shp"
@echo Processing File 62 of 100: tl_2015_48477_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48477_roads.shp"
@echo Processing File 63 of 100: tl_2015_48479_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48479_roads.shp"
@echo Processing File 64 of 100: tl_2015_48481_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48481_roads.shp"
@echo Processing File 65 of 100: tl_2015_48483_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48483_roads.shp"
@echo Processing File 66 of 100: tl_2015_48485_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48485_roads.shp"
@echo Processing File 67 of 100: tl_2015_48487_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48487_roads.shp"
@echo Processing File 68 of 100: tl_2015_48489_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48489_roads.shp"
@echo Processing File 69 of 100: tl_2015_48491_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48491_roads.shp"
@echo Processing File 70 of 100: tl_2015_48493_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48493_roads.shp"
@echo Processing File 71 of 100: tl_2015_48495_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48495_roads.shp"
@echo Processing File 72 of 100: tl_2015_48497_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48497_roads.shp"
@echo Processing File 73 of 100: tl_2015_48499_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48499_roads.shp"
@echo Processing File 74 of 100: tl_2015_48501_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48501_roads.shp"
@echo Processing File 75 of 100: tl_2015_48503_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48503_roads.shp"
@echo Processing File 76 of 100: tl_2015_48505_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48505_roads.shp"
@echo Processing File 77 of 100: tl_2015_48507_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_48507_roads.shp"
@echo Processing File 78 of 100: tl_2015_49001_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49001_roads.shp"
@echo Processing File 79 of 100: tl_2015_49003_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49003_roads.shp"
@echo Processing File 80 of 100: tl_2015_49005_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49005_roads.shp"
@echo Processing File 81 of 100: tl_2015_49007_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49007_roads.shp"
@echo Processing File 82 of 100: tl_2015_49009_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49009_roads.shp"
@echo Processing File 83 of 100: tl_2015_49011_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49011_roads.shp"
@echo Processing File 84 of 100: tl_2015_49013_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49013_roads.shp"
@echo Processing File 85 of 100: tl_2015_49015_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49015_roads.shp"
@echo Processing File 86 of 100: tl_2015_49017_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49017_roads.shp"
@echo Processing File 87 of 100: tl_2015_49019_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49019_roads.shp"
@echo Processing File 88 of 100: tl_2015_49021_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49021_roads.shp"
@echo Processing File 89 of 100: tl_2015_49023_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49023_roads.shp"
@echo Processing File 90 of 100: tl_2015_49025_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49025_roads.shp"
@echo Processing File 91 of 100: tl_2015_49027_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49027_roads.shp"
@echo Processing File 92 of 100: tl_2015_49029_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49029_roads.shp"
@echo Processing File 93 of 100: tl_2015_49031_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49031_roads.shp"
@echo Processing File 94 of 100: tl_2015_49033_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49033_roads.shp"
@echo Processing File 95 of 100: tl_2015_49035_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49035_roads.shp"
@echo Processing File 96 of 100: tl_2015_49037_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49037_roads.shp"
@echo Processing File 97 of 100: tl_2015_49039_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49039_roads.shp"
@echo Processing File 98 of 100: tl_2015_49041_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49041_roads.shp"
@echo Processing File 99 of 100: tl_2015_49043_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49043_roads.shp"
@echo Processing File 100 of 100: tl_2015_49045_roads.shp
ogr2ogr -progress -append -skipfailures -nln "roads_2015" -lco "GEOM_TYPE=GEOMETRY" -lco "GEOM_NAME=Geom" -a_srs "EPSG:4326" -t_srs "EPSG:4326" -f "MSSQLSpatial" "MSSQL:Server=ANTHONY-PC;Database=MAF_Tiger;Integrated Security=true;MultipleActiveResultSets=True;" "D:\Census Data\Geo\tl_2015_49045_roads.shp"

:exit