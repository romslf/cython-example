set python_version=311
set python_path=%USERPROFILE%\AppData\Local\Programs\Python\Python%python_version%
set executable_name=main.exe

:: Create needed directories
mkdir C
mkdir dist

cython --embed -o C\main.c main.py
gcc -municode -DMS_WIN64 -mthreads -Wall -O -I%python_path%\include -L%python_path%\libs C\main.c -lpython%python_version% -o dist\%executable_name%