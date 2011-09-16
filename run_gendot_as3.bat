::@set scandir="./test/pv3d/nochump"
::@set scandir=".\test\pv3d\org\papervision3d\core"

@set scandir=".\test\as3"
@set CLASSPATH=".;antlrworks-1.4.2.jar;bin"

@java -cp %CLASSPATH% GenDotAS3 %scandir% > log.txt 2>&1
::@type log.txt | find "line 1:0 no viable alternative at character"
::@del log.txt

@echo .
@echo .
@echo ========================
@echo Converting dot to gif...
@echo ========================
@dot -Tgif -oout.gif out.dot

@set scandir=
@set CLASSPATH=
@pause
