Installation on OSX
===================
These tools need certain programs to function properly. Below are instructions
on installation and configuration and how to use the tools once installed. You
will need the terminal program, which is located in the Applications folder under
"Utilities". After installation the terminal program won't be required.

Installing Multimarkdown
------------------------
Download the Mac Installer 4.7.1 from 
    http://fletcherpenney.net/multimarkdown/download/
Select it from the Downloads list in the taskbar:
    MultiMarkdown-Mac-4.7.1.dmg
When it mounts click on the "MultiMarkdown-Mac-4.7.1.mpkg file.
If it complains that it wasn't from the Apple Store then click on 
System Preferences in the taskbar and select "Security and Privacy". 
Unlock the padlock with your administrator password. Now change the 
setting from "Allow apps downloaded from: Mac App Store and 
identified developers" to "Anywhere". Now try the installer again. 
Finally, change the setting in Security and Privacy back to its 
original value. 

Setting up ssh
--------------
If you have already generated an ssh key you can skip this step.

Open a terminal and type the following command:
    ssh-keygen -t rsa
Accept the default location and just press return if you don't want to set 
a passphrase for the key, which you will have to type at the start of each 
login session.

This puts two files into ~/.ssh. One is id_rsa, your private key. Don't 
give this to anyone. The other is id_rsa.pub. You need to send this to 
the administrator of your server. He/she will add them to the file 
~/.ssh/authorized_keys on the server and set the file permissions 
to 600.

Installing and setting up github
--------------------------------
Download and install Github for the Mac from https://mac.github.com.
The CHCA username is chasharpur and the password is S1ngleT0n. 
First you have to commit your changes. For this you need to type a 
short summary message. 
After committing you will be able to sync. Click the "sync" button 
to save your changes to the repository.

Installing and configuring gedit
--------------------------------
1. Download the gedit application from 
    http://ftp.gnome.org/pub/GNOME/binaries/mac/gedit/3.2/. 
Select the gedit-3.2.6.dmg file. After downloading you should be able to 
install it in the usual way. However it doesn't work without one change. 
Open the terminal program again and type the following command:
    rm /Applications/gedit.app/Contents/Resources/lib/libxml2.2*
Now gedit should launch correctly.
2. Now go to the gedit menu and select "Preferences". Click on the "Plugins" 
tab. Select the "External Tools" plugin, tick the check box, and close.
3. Now in the Tools menu select "Manage external tools". In the left-hand 
panel click on the "Add a new tool" icon at the bottom. Name it "Upload to 
HCA". In the right-hand panel add after the first line the path to the 
upload script, substituting your short user name for '{your-user-name}':
    /Users/{your-user-name}/Documents/web/update.sh
4. Next, in the bottom-right corner next to "Applicability" select "Markdown" 
from the list of languages and check its box.
5. In Gedit Preferences select Editor tab and uncheck "Create a backup copy 
of files before saving".

Editing and saving
------------------
Now that setup is complete, all you have to do is open any one of the 
markdown files in the 'web' directory, edit them and save as usual.
If you want the text to appear on Drupal select 'Tools->External tools->
Upload to the HCA'. A terminal will open at the foot of the window detailing 
progress. Ignore warnings about the PHP setup. The edited text should now 
appear online.

To sync the text with the repository follow the instructions for the github 
application above.
