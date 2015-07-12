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
setting from "Allow apps downloaded from: "Mac App Store and 
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
to 600. It can also be added to a git repository to permit 
passwordless check in.

Installing and setting up git
-----------------------------
Git is needed to allow sharing and version tracking of the uploadable files.
Without it you can easily get one person altering the same copy you are editing. 
Git is aware of that and alert you, attempting to merge. Also it is possible to 
roll back to an earlier version or to see who made what change.

To install it just open a terminal and type 
    git --help
In OSX Mavericks 10.9 and above this is supposed to install it.

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
    /Users/{your-user-name}/web/update.sh
4. Next, in the bottom-right corner next to "Appicability" select "Markdown" 
from the list of languages and check its box.
5. Finally, open a terminal and type: 
    git config --global core.editor "gedit"
This sets gedit as the "core editor" for git, which you will need when 
saving to the repository.
