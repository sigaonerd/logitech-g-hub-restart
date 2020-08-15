@ECHO OFF
CLS

ECHO Closing Logitech G-HUB
CD "C:\Program Files\LGHUB\"
TASKKILL /F /IM lghub.exe /T
TASKKILL /F /IM lghub_agent.exe /T
TASKKILL /F /IM lghub_updater.exe /T

ECHO Reloading Logitech G-Hub and set lghub_agent low priorit and single-core affinity
START /low /affinity 1 lghub_agent.exe 
START cmd.exe @cmd /k "CD "C:\Program Files\LGHUB\" & START "G HUB" "lghub.exe" /secondary & EXIT"
EXIT
