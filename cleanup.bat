
:: del elimina file
:: rd elimina directory, con parametri:
:: /S  Delete all files and subfolders, in addition to the folder itself. Use this to remove an entire folder tree.
:: /Q  Quiet - do not display Y/N confirmation

:: come funziona?
:: rd /s /q "Project Logs for ECU-1"
for /d %%G in ("ProjectLogs") do rd /s /q "%%~G"

del debug.log
rd /s /q __Previews
rd /s /q History
cd SCH
rd /s /q __Previews
cd ..
cd PCB
rd /s /q __Previews
del *.htm
cd ..
cd ProjectOutputs
del *.drc
del *.html
cd ..
del *.dat