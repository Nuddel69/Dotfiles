" Initiate Vim-Plug
source $HOME/.config/nvim/vim-plug/plugins.vim

"" General
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
" set showbreak=+++ 	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set showmatch   " show matching

set tabstop=4               " number of columns occupied by a tab
set softtabstop=4 

set hlsearch	" Highlight all search results
set incsearch	" Searches for strings incrementally
 
set expandtab   " converts tabs to white space
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set wildmode=longest,list   " get bash-like tab completions 
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set cc=80       " set an 80 column border for good coding style
filetype plugin indent on  "allow auto-indenting depending on file type
syntax on 
set clipboard=unnamedplus
filetype plugin on
set ttyfast
 "set background=dark
 "let g:solarized_termcolors=256
 "colorscheme solarized
" autocmd vimenter * ++nested colorscheme gruvbox 
" set noswapfile
" set backupdir=~/.cache/vim

"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
"" Plugins

" LaTeX
let g:vimtex_view_method='zathura' 

" Rainbow Parentheses
au FileType c,cpp,hpp,h,ino,objc,objcpp,py,asm,html,css call rainbow#load()

" NERD Commentator
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Lightline
set noshowmode
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction
let g:lightline = {
    \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
    \ }

" COC Intellisense
source $HOME/.config/nvim/plug-config/coc.vim

" Syntastic Highlight

let python_highlight_all=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Arduino VIM keybinds
nnoremap <buffer> <leader>am <cmd>ArduinoVerify<CR>
nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
nnoremap <buffer> <leader>ad <cmd>ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>
