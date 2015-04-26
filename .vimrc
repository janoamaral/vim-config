filetype plugin on
filetype indent on
filetype plugin indent on


" No wordwrap
set nowrap

" No backup ni swap
set nobackup
set noswapfile

" Usar la terminal con 256 colores
set t_Co=256
let base16colorspace=256

" Muestra el numero de linea
set number

set expandtab
" Cada TAB inserta 4 espacios (estandar)
set shiftwidth=4
set softtabstop=4
" Siempre identa a un numero multiplo de shiftwidth
set shiftround

" Corta la linea a las 79 columnas
set textwidth=79
" Cada TAB inserta 2 espacios (google estandar)
" set shiftwidth=2
" set softtabstop=2

" Salvado rapido con ctrl+Z
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Cerrar etiquetas HTML automaticamente
"au FileType html,xhtml,xml so ~/.vim/bundle/autoclose/ftplugin/html_autoclosetag.vim
let g:closetag_html_style=1
source ~/.vim/bundle/closetags/plugin/closetag.vim
au Filetype html,xml,xsl source ~/.vim/bundle/closetags/plugin/closetag.vim

set noignorecase

"Activar airline (status bar)
set laststatus=2

"Crear las nuevas ventanas abajo y/o la derecha de la otra ventanas
set splitbelow
set splitright

"Configuracion de supertab (uso junto con jedi-vim)
let g:SuperTabDefaultCompletionType = "context"

filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

au FileType python source ~/.vim/bundle/python-mode/plugin/pymode.vim

let mapleader =","

let g:user_emmet_leader_key='<C-L>'

" Usar el tema Molokai
" let g:molokai_original=0
" colorscheme molokai
colorscheme genericdc-light

let g:rehash256 = 1

" Iluminar la linea
set cursorline
highlight CursorLine cterm=NONE


