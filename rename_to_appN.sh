<<cmmt
Here's how the script works:
The #!/bin/bash line at the beginning of the script tells the shell to use the Bash shell interpreter to execute the script.
The i=1 line initializes a counter variable i to 1.
The for file in *.apk line loops over all files in the current directory with the .apk extension.
The mv "$file" "app$i.apk" line renames each file to app1.apk, app2.apk, app3.apk, and so on, depending on the value of the i counter variable.
The i=$((i+1)) line increments the i counter variable after each file is renamed.

To use the script, save it to a file (e.g., rename.sh) and make it executable by running the command chmod +x rename.sh. 
Then, navigate to the directory containing the files you want to rename and run the script by typing ./rename.sh. 
The script will rename all files in the directory with the .apk extension to a sequence of names such as app1.apk, app2.apk, app3.apk, and so on.
cmmt


#!/bin/bash

i=1
for file in *.apk
do
  mv "$file" "app$i.apk"
  i=$((i+1))
done
