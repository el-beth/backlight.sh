# backlight.sh
a bash shell script to adjust screen brightness from terminal or other CLI interfaces - on linux systems 

after cloning this repo, paste the backlight.sh script file in any of the directories in your default shell's $PATH directories i.e. /bin/ /usr/bin ... . after doing this make the script executable 

chmod +x /bin/backlight.sh ## assuming the file was stored as /bin/backlight.sh

after this, open a root terminal or other root shell and pass a number as the argument for the backlight.sh script i.e. execute the following in a root shell

backlight.sh 5 ## to set the brightness to 5 or
backlight.sh 0 ## to set the minimum brightness or any other value ...

