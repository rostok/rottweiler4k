@cls
del R.class
del R.jar 
del RR.jar 
javac -g:none -target 1.5 -source 1.5 R.java
jar cvfM R.jar R.class
java -Djava_home="%JAVA_HOME%" -jar ..\java\proguard5.2\lib\proguard.jar @proguard.pro 
C:\bin\git\usr\bin\unzip.exe -o RR.jar
del RR.jar
del R.jar
rd /s /q temp
mkdir temp
copy R.class temp
mkdir temp\META-INF
copy R.manifest temp\META-INF\MANIFEST.MF 
cd temp
del R.jar
BJWFlate.exe -r -y -n -s2048 ..\R.jar *
#BJWFlate.exe -r -y -n -s2048 ..\R.jar-2048 *
#BJWFlate.exe -r -y -n -s1024 ..\R.jar-1024 *
#BJWFlate.exe -r -y -n -s512 ..\R.jar-512 *
#BJWFlate.exe -r -y -n -s256 ..\R.jar-256 *
#BJWFlate.exe -r -y -n -s128 ..\R.jar-128 *
#BJWFlate.exe -r -y -n -s64 ..\R.jar-64 *
#BJWFlate.exe -r -y -n -s32 ..\R.jar-32 *
#BJWFlate.exe -r -y -n -s16 ..\R.jar-16 *
#BJWFlate.exe -r -y -n -s3 ..\R.jar-3 *
#BJWFlate.exe -r -y -n -s4096 ..\R.jar-4096 *
#BJWFlate.exe -r -y -n -s3000 ..\R.jar-3000 *
copy *.jar ..
cd ..
rd /s /q temp
