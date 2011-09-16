@mkdir bin
@del /Q bin\*.class
@javac -cp ".;antlr-runtime-3.3.jar;src" -d bin src\GenDotAS3.java
@pause
