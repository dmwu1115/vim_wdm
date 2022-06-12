let mapleader=";"

" config base
syntax on
set nu
set hlsearch
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.h,*.lua,*.py,*.pl,*.pm,*.rb,*.hs,*.vim 2match Underlined /.\%81v/
" set colorcolumn=81
set list
set listchars=tab:>-,space:.,trail:-
set expandtab
set tabstop=4
set shiftwidth=4
set cino=g0,:0

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Shougo/neoinclude.vim'
Plugin 'Shougo/neco-vim'
Plugin 'Shougo/neco-syntax'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'wesleyche/SrcExpl.git'
" Plugin 'tpope/fugitive-vim'
call vundle#end()
filetype plugin indent on

" config nerdtree
nmap <leader>n :NERDTreeMirror <CR>
nmap <leader>n :NERDTreeToggle <CR>
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
" let NERDTreeBookmarksFile=$VIM '/Data/NerdBookMarks.txt'
let NERDTreeMouseMode=0
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLienNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeIgnore=['\.vim$', '\.pyc$', '\.o$', '\.so$', '\.ko$', '\.out$']

" config taglist
nmap <leader>t :Tlist <CR>
let Tlist_Use_Right_Window = 1
let Tlist_Compart_Format = 1
let Tlist_Exist_OnlyWindow = 1
let Tlist_File_Fold_Auto_CLose = 0
let Tlist_Enable_Fold_Column = 0
set tags=tags

" config cscope
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  if filereadable("cscope.out")
    cs add cscope.out
  endif
  set csverb
endif
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" config vim-airline
set laststatus=2
set t_Co=256
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set ambiwidth=double
nmap <tab> :bn<cr>

" config neocomplete
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1

" config vim-fugitive
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gb :Git blame<cr>

" config rainbow_parentheses.vim


" config supertab
let g:SuperTabDefaultCompletionType = "context"

" config SrcExpl
" nmap <leader>se :SrcExplToggle<CR>
" let g:SrcExpl_winHeight = 6
" let g:SrcExpl_refreshTime = 100
" let g:SrcExpl_jumpKey = "<ENTER>"
" let g:SrcExpl_gobackKey = "<SPACE>"
" let g:SrcExpl_searchLocalDef = 1
" let g:SrcExpl_isUpdateTags = 0
" let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
" let g:SrcExpl_updateTagsKey = "<F12>"
" let g:SrcExpl_prevDefKey = "<F10>"
" let g:SrcExpl_nextDefKey = "<F11>"
