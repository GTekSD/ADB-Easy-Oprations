:: To use the batch file, save it to a file with the .bat extension (e.g., install_apps.bat) and 
:: place it in the same directory as the APK files you want to install. 
:: Then, open a command prompt in that directory and run the batch file by typing install_apps.bat. 
:: The script will install each APK file in the sequence app1.apk, app2.apk, app3.apk, and so on up to app22.apk using the ADB install command.
:: Dont forget to rename all apk files in the sequence app1.apk, app2.apk, app3.apk ... app9.apk.
:: here (1,1,9) 9 is the number of apps u want to install, means app1.apk to app9.apk. Replace as ur requirement.

@echo off

for /l %%i in (1,1,9) do (
  adb install app%%i.apk
)
