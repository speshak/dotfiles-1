set fo=tcqln scs sm tm=200 bs=2 ai bg=dark title
set ignorecase nohlsearch number showcmd

syntax on

set sessionoptions-=options

" Tab related
set tabstop=2 shiftwidth=2 expandtab

set laststatus=2
set autochdir
set statusline=%f(%l:%c)%y%m
set completeopt=menu


let g:xml_use_xhtml = 1
let g:explDetailedList=1

" Taglist stuff
filetype on

set printoptions=paper:Letter

" Color scheme
colorscheme codedark
let g:airline_theme = 'codedark'


" Spelling (didn't exist before vim 7.0)
if version >= 700
  set spelllang=en
  setlocal spellfile=~/.vim-spellfile.en.add
  map sp <Esc>:set spell<CR>
  map nsp <Esc>:set nospell<CR>
endif


" Indent guides
let g:indent_guides_start_level = 2
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey


" Skeletons!
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"


" Undo Config
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif


" Load man plugin for :Man support
runtime! ftplugin/man.vim

" Set backup options if we're editing a crontab
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif
