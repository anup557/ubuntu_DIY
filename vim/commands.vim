 " " to use other rust related tool, use the full path or un-comment below one
 " :let $PATH="$PATH:/home/anup/.cargo/bin/"

" ---------------------------------
" related indentation, tab width 
" ---------------------------------
:set autoindent

" reloading the vimrc
:map sync :so ~/.vimrc<CR>

" noexpandtab option prevents the conversion of tabs to spaces
:set expandtab
" ts: tabstop i.e. in a tab how many spaces will be there
:set ts=4
" sw: shiftwidth i.e. in a shift how many tabs will be there. So in a shift now its like 4 spaces
:set sw=4
" after 100 text width it gives adds a newline charecter
" to apply this, move the cursor in the line and press gq
:set tw=100

" ---------------------------------
" related nerd tree 
" ---------------------------------
" open nerd tree with toggle
:map nd :NERDTreeToggle<CR>

" ---------------------------------
" related fzf 
" ---------------------------------
" mapping FZF in fz
:map fz :FZF<CR>
" Rg is to search through files in vim
:map fd :Rg<CR>
" applying tab split after pressing enter
let g:fzf_action = { 'enter': 'tab split' }

" ---------------------------------
" related spell check 
" ---------------------------------
" for spelling check
:setlocal spell spelllang=en_us
:set colorcolumn=100

" ---------------------------------
" related line number
" ---------------------------------
" related line number
" opens with line number. By default the lines will be numbered
:set nu                                        
" for line numbering and no numbering
:map q :set nu<CR>
:map qq :set nonumber<CR>

" ---------------------------------
" related gf
" ---------------------------------
" remapping gf to open the window in a new tab window
:nnoremap gf <c-w>gf

" " tab related things in vim
" :map tn :tabNext<CR>
" :map tc :tabclose<CR>
" :map tp :tabprevious<CR>

:highlight Comment cterm=italic
let g:gruvbox_italic=1
" :colorscheme gruvbox
" :set background=dark

" :colorscheme ayu
" :set background=simple
" :set termguicolors     " enable true colors support
" :let ayucolor="light"  " for light version of theme
" :let ayucolor="mirage" " for mirage version of theme
" :let ayucolor="dark"   " for dark version of theme

" ---------------------------------
" run commands for different program
" ---------------------------------
" run command for all the progs. For sage it is not working
if &filetype=='python'
        :map run :w<CR>:!python3 % <CR>
elseif &filetype=='lua'
        :map run :w<CR>:!lua % <CR>
elseif &filetype=='c'
        :map run :w <CR> :!gcc % -lm && ./a.out <CR> :!rm a.out <CR>
elseif &filetype=='cpp'
        :map run :w <CR> :!g++ % -lm && ./a.out <CR> :!rm a.out <CR>
elseif &filetype=='tex'
        :map run :w <CR> :VimtexCompile <CR>
        :map qt :VimtexStop <CR> VimtexClean <CR>
elseif &filetype=='rust'
        :map run :w <CR> :!/home/anup/.cargo/bin/rustc % -o out && ./out <CR> :!rm out <CR>
elseif &filetype=='plaintex'
        :map run :w <CR> :VimtexCompile <CR>
        :map qt :VimtexStop <CR>
" elseif (&filetype=='conf')
"       :map run :w <CR> :!sage % <CR>
else
        :map run :echo "command not written for" &filetype <CR>
endif

" sage files not run by if condition for some reason, so using this also does the same thing
au BufRead,BufNewFile *.sage map run :w <CR> :!sage % <CR>
au BufRead,BufNewFile *.mzn map run :w <CR> :!/home/anup/Desktop/github/MiniZincIDE-2.8.3-bundle-linux-x86_64/bin/minizinc % <CR>
au BufRead,BufNewFile *.sh map run :w <CR> :!./% <CR>

" ---------------------------------
" related vim exit
" ---------------------------------
autocmd User VimtexEventQuit VimtexClean

" ---------------------------------
" related snippets
" ---------------------------------
" " next 3 lines are commands for snippets
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<tab>"

" ---------------------------------
" for auto suggestions
" ---------------------------------
" Tab to navigate completion menu, Enter to confirm
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" !!!!!!!!not working
" Use Tab for coc.nvim completion and UltiSnips expansion/jump
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ "\<Tab>"

" Use Shift-Tab for coc.nvim popup menu previous or UltiSnips jump backward
inoremap <silent><expr> <S-Tab>
      \ pumvisible() ? "\<C-p>" :
      \ coc#jumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-jump-backward',''])\<CR>" :
      \ "\<S-Tab>"

" ---------------------------------
" related comment string
" ---------------------------------
" for commenting lines
autocmd FileType tex setlocal commentstring=\%%s
autocmd FileType python setlocal commentstring=#%s
autocmd FileType conf setlocal commentstring=#%s
autocmd FileType vim setlocal commentstring=\"%s
" autocmd FileType php setlocal commentstring=<!--%s-->
au BufRead,BufNewFile *.php setlocal commentstring=<!--%s-->
syntax on


" ---------------------------------
" related block cursor in normal mode and line in insert mode
" ---------------------------------
" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" ---------------------------------
"  related fold methods
" ---------------------------------
" " for folding purpose, depending upon syntax it will fold the code
" :set foldmethod=syntax
" :set foldnestmax=10

" remove the highlighted color in fold
:hi Folded ctermfg=102 guifg=#878787 guibg=NONE ctermbg=NONE

" to make full screen at the time of opening
set lines=999 columns=999

nnoremap tt :lcd %:p:h<CR>:terminal<CR>

