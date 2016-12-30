" VIM Configuration - Vincent Jousse
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
set nocompatible
" Activation de pathogen
call pathogen#infect()

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
                          " lignes

set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur
                          " (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

set background=dark
colorscheme molokai 

set guifont="Source Code Pro for Powerline":h13
set antialias

" Activation de NERDTree au lancement de vim
autocmd vimenter * NERDTree | wincmd p 

"Deactivate scrolling
:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

" Leader is now ,
let mapleader=","

" Ctrl + N for NERDTree
map <C-n> :NERDTreeToggle<CR>

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

 " powerline symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" " buffer that's left is the NERDTree buffer
" function! s:CloseIfOnlyNerdTreeLeft()
 "  if exists("t:NERDTreeBufName")
 "    if bufwinnr(t:NERDTreeBufName) != -1
 "      if winnr("$") == 1
 "        q
 "      endif
 "     endif
 "   endif
 " endfunction
"
 " NERD Commenter
 filetype plugin on

 " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
 "
 " " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

 " " Align line-wise comment delimiters flush left instead of following code
 " indentation
let g:NERDDefaultAlign = 'left'

 " " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

 " " Allow commenting and inverting empty lines (useful when commenting a
 " region)
 let g:NERDCommentEmptyLines = 1

 " " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1

