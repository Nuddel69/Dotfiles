" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Commenter
    Plug 'preservim/nerdcommenter'

    " Rainbow Brackets
    Plug 'frazrepo/vim-rainbow' 

    " Lightline Statusbar
    Plug 'itchyny/lightline.vim' 

    " GitGutter Diff-Organizer
    Plug 'airblade/vim-gitgutter' 

    " Gruvbox Theme
    Plug 'morhetz/gruvbox' 

    " Vim Fugitive - Git Integration
    Plug 'tpope/vim-fugitive' 
    
    " Vim Surround
    Plug 'tpope/vim-surround' 
    
    " Syntastic - Syntax checker
    Plug 'vim-syntastic/syntastic' 

    " COC Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " OpenScad Intellisense
    "Plug 'sirtaj/vim-openscad'

    " Arduino-Cli integration
    Plug 'stevearc/vim-arduino'

    " VimTeX
    Plug 'lervag/vimtex'

    " VimTeX-Fold
    Plug 'matze/vim-tex-fold'

    " XMLEdit
    Plug 'sukima/xmledit'

call plug#end()
