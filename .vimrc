set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

"""""""start
Bundle 'taglist.vim'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_Right_Window = 1
nmap tm :Tlist<cr>
Bundle 'SuperTab'
Bundle 'winmanager'
let g:winManagerWindowLayout = 'FileExplorer'
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWidth = 20
nmap wm :WMToggle<cr>
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-tree'
Plugin 'minibufexplorerpp'
let g:miniBufExplMapWindowNavVim = 1
Plugin 'vim-scripts/Conque-GDB'


"""""""end
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set fileencodings=utf-8,gbk,ucs-bom,cp936

set number
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch


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

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

syntax enable
if has('gui_running')
    set background=light
    set guifont=Ubuntu\ Mono\ 13
    set lines=999 columns=999
else
    set background=dark
endif
"colorscheme solarized

set foldmethod=indent
