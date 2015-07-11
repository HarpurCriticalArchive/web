INstallation on OSX
===================
To install the update script into gedit you need a few things first: 
multimarkdown, set up ssh, then install gedit itself and the extension.

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

Open a terminal. It is in Applications->Utilities. Type the following command:
    ssh-keygen -t rsa
Accept the default location and just press return if you don't want to set 
a passphrase for the key, which you will have to type in each time you use 
it in a login session.

This puts two files into ~/.ssh. One is id_rsa, your private key. Don't 
give this to anyone. The other is id_rsa.pub. You need to send this to 
the administrator of your server. He/she will add them to the file 
~/.ssh/authorized_keys on the server and set the file permissions 
to 600.

Installing gedit
----------------
Download the gedit application from http://ftp.gnome.org/pub/GNOME/binaries/mac/gedit/3.2/. 
Select the gedit-3.2.6.dmg file. After downloading you should be able to 
install it in the usual way. However it doesn't work without editing. 
Open the terminal program again and type the following command:
rm /Applications/gedit.app/Contents/Resources/lib/libxml2.2*
Now gedit should launch correctly.
