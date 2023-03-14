" this portion is for latex files in Vim
 " :map <F5> :!pdflatex %:t<CR> <Esc>



" related indentation 
:set autoindent
" noexpandtab option prevents the conversion of tabs to spaces
:set expandtab
" ts: tabstop i.e. in a tab how many spaces will be there
:set ts=4
" sw: shiftwidth i.e. in a shift how many tabs will be there. So in a shift now its like 4 spaces
:set sw=4


" related line number
" opens with line number. By default the lines will be numbered
:set nu                                        
" for line numbering and no numbering
:map q :set nu<CR>
:map qq :set nonumber<CR>


" run command for all the progs. For sage it is not working
if &filetype=='python'
        :map run :w<CR>:!python3 % <CR>
elseif &filetype=='lua'
        :map run :w<CR>:!lua % <CR>
elseif &filetype=='c'
        :map run :w <CR> :!gcc % && ./a.out <CR> :!rm a.out <CR>
" elseif (&filetype=='conf')
"       :map run :w <CR> :!sage % <CR>
else
        :map run :echo "command not written for" &filetype <CR>
endif


" next 3 lines are commands for snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" next 4 lines are for commenting lines
autocmd FileType tex setlocal commentstring=\%%s
autocmd FileType python setlocal commentstring=#%s
autocmd FileType conf setlocal commentstring=#%s
autocmd FileType vim setlocal commentstring=\"%s
syntax on


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


" " for folding purpose, depending upon syntax it will fold the code
" :set foldmethod=syntax
" :set foldnestmax=10

" remove the highlighted color in fold
:hi Folded ctermfg=102 guifg=#878787 guibg=NONE ctermbg=NONE
