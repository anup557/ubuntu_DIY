" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
      " to install in vimrc
      Plugin 'VundleVim/Vundle.vim'

      " to install snippets
      Plugin 'SirVer/ultisnips'
      Plugin 'honza/vim-snippets'

      " to comment lines using gcc command
      Plugin 'tpope/vim-commentary'

      " to use multiple cursors to modify file
      Plugin 'terryma/vim-multiple-cursors'

      " to give brackets arround some highlighted text
      Plugin 'LucHermitte/lh-vim-lib'
      Plugin 'LucHermitte/lh-brackets'

      " to use airline themes in vim
      Plugin 'vim-airline/vim-airline'
      Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

