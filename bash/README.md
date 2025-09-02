The file bashrc is linked with the original bashrc located in /home/anup/.bashrc. Any change in this
will also reflect in the original file.

All the commands and alias defined by me is given to the file "bashrc_anup" of the folder 
"/home/anup/Dropbox/ubuntu_DIY/bash/bashrc_anup". So that is the bashrc got deleted then also it
won't effect the commands written by me. 

If the original bashrc got deleted and the symlink one also, then add the following line at the
end of the file "source /home/anup/Dropbox/ubuntu_DIY/bash/bashrc_anup" this will append all the
commands written by me at the end.

If you want to add any command, then just add it in bashrc_anup file.
