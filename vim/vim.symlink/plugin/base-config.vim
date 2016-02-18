set fo=tcqln scs sm tm=200 bs=2 ai bg=dark title
set ignorecase nohlsearch number showcmd

syntax on

set sessionoptions-=options

" Tab related
set tabstop=2 shiftwidth=2 expandtab

set laststatus=2
set autochdir
set statusline=%f(%l:%c)%y%m

nnoremap ; :

set completeopt=menu

" Map mode change to something on homerow
inoremap kj <esc>
"inoremap <esc> <nop>

let xml_use_xhtml = 1

runtime! ftplugin/man.vim

map <F6> :NERDTreeToggle<CR>

let g:explDetailedList=1

" Taglist stuff
filetype on
let Tlist_Ctags_Cmd="/sw/bin/ctags"
let Tlist_Show_One_File=0
let Tlist_Auto_Open=0
let Tlist_Exit_OnlyWindow=1

set printoptions=paper:Letter

" Spelling (didn't exist before vim 7.0)
if version >= 700
	set spelllang=en
	setlocal spellfile=~/.vim-spellfile.en.add
	map sp <Esc>:set spell<CR>
	map nsp <Esc>:set nospell<CR>
endif


map <F7> :StripWhitespace<CR>

" Indent guides
let g:indent_guides_start_level = 2

" Don't lose selection when shifting
xnoremap <  <gv
xnoremap >  >gv


" Skeletons!
let skeletons#autoRegister = 1
let skeletons#skeletonsDir = "~/.vim/skeletons"


" Undo Config
nnoremap <F5> :UndotreeToggle<CR>

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
