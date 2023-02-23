<<cmmt
Here's how the script works:
The #!/bin/bash line at the beginning of the script tells the shell to use the Bash shell interpreter to execute the script.
The for i in {1..22} line sets up a loop that will run 22 times, with the variable i taking on the values from 1 to 22.
The adb install app$i.apk line runs the ADB install command for each APK file, where i is the value of the loop variable.
The loop will run the command for each value of i, which corresponds to each APK file in the sequence app1.apk, app2.apk, app3.apk, and so on up to app22.apk.

To use the script, save it to a file (e.g., install_apps.sh) and make it executable by running the command chmod +x install_apps.sh. 
Then, navigate to the directory containing the APK files you want to install and run the script by typing ./install_apps.sh. 
The script will install each APK file in the sequence app1.apk, app2.apk, app3.apk, and so on up to app22.apk using the ADB install command.
cmmt


#!/bin/bash

for i in {1..22}
do
  adb install app$i.apk
done
