The vimrc in this folder is linked with the original vimrc file located in "/home/anup/.vimrc".
Any change in the file will also be reflected in the original vimrc file. 

Along with this the commands, plugin and the powerline files are also specified in here.

If somehow the original vimrc file and the linked one got deleted then append the following lines
in the vimrc file, it will add all the commands and the other things in the rc file.

<!-- -------------------------------------------------------------------- -->
" file contains the plugins of vim
source /home/anup/Dropbox/ubuntu_DIY/vim/plugins.vim

" file contains the commands of vim
source /home/anup/Dropbox/ubuntu_DIY/vim/commands.vim

" file contains the powerline commands of vim
source /home/anup/Dropbox/ubuntu_DIY/vim/powerline.vim

" file contains the latex commands of vim
source /home/anup/Dropbox/ubuntu_DIY/vim/vimTex.vim
<!-- -------------------------------------------------------------------- -->
