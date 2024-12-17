" this file is for the powerline setip in vim. For the fonts, download it
" from nerdfont cheetsheet -> put it in ~/.local/share/fonts -> run $fc-cache -fv to load
" -------------------------------------------------------------------------------------------

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
"
"let g:airline_powerline_fonts = 1
" Do not draw separators for empty sections (only for the active window)
" let g:airline_skip_empty_sections = 1
let g:airline_section_c_only_filename = 1

" to replace the section b with section c
let g:airline_section_b = airline#section#create(['%.t'])
let g:airline_section_y = airline#section#create(['%.t'])
let g:airline_section_c = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '🔒'
" let g:airline_right_sep = '«'
" " let g:airline_right_sep = '◂'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.colnr = ' ℅:'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ' :'
" let g:airline_symbols.maxlinenr = '☰ '
" let g:airline_symbols.dirty='⚡'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" to replace the filetypes with the symbols
au BufRead,BufNewFile *.vim let g:airline_section_x=' '
au BufRead,BufNewFile *.c let g:airline_section_x='󰙱'
au BufRead,BufNewFile *.h let g:airline_section_x='󰙱'
au BufRead,BufNewFile *.cpp let g:airline_section_x='󰙲 '
au BufRead,BufNewFile *.py let g:airline_section_x=''
au BufRead,BufNewFile *.txt let g:airline_section_x='󰊄'
