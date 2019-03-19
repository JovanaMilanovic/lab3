@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc6slx45fgg676-2 -nt timestamp -bm vezba3.bmm "D:/ra175-2016/lab3/vezba3/implementation/vezba3.ngc" -uc vezba3.ucf vezba3.ngd 

@REM #
@REM # Command line for map
@REM #
map -o vezba3_map.ncd -w -pr b -ol high -timing -detail vezba3.ngd vezba3.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high vezba3_map.ncd vezba3.ncd vezba3.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml vezba3.twx vezba3.ncd vezba3.pcf 

