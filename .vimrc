syntax on 

" Backups (from https://wiki.corp.google.com/twiki/bin/view/Main/VimEditor)
set directory=$HOME/.vimbak
set backup writebackup
set backupdir=$HOME/.vimbak
set backupskip=/tmp/*,/var/tmp/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set history=200          " Store last 200 commands as history.
" Store in .viminfo: marks for 50 files, 200 lines of registers.
set viminfo='50,\"200
set updatecount=40       " Number of characters typed before updating swapfile.
set updatetime=1000      " Milliseconds before updating swapfile.
set suffixes=.bak,~,.o,.swp

" " enne config
colorscheme desert
set numberwidth=5
"set lines=60
"set columns=105
" " enne config

set showmode            " display mode of editor
set showmatch           " matching braces
set ruler
set showcmd             " displays part of the command info in last line
set incsearch           " show incremental matches on search
set hlsearch            " highlight search results
set backspace=2         " allow backspace over indents, lines, start of insert
set number              " line numbers
set ignorecase          " case insensitive searches
set smartcase           " case sensitive search if caps are used in search
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

if &term == "screen"
  let &titlestring=expand("%:t")
  set t_ts=k
  set t_fs=\
  set title
endif

" MiniBufExplorer plugin
"   let ctrl+tab swap buffers
let g:miniBufExplMapCTabSwitchBufs = 1
"   Try to open new buffers NOT into the mini buff window
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1

" ctags
set tags=./tags;/

"" " taglist plugin
"" let g:Tlist_Auto_Open = 1
"" let g:Tlist_Exit_OnlyWindow =1
"" let g:Tlist_File_Fold_Auto_Close = 1
"" 
"" " vindect plugin
"" let mysyntaxfile = "~/.vim/mysyntax.vim"
"" if has("python")
""   py import sys,os; sys.path.append(os.path.expanduser("~/.vim/"))
""   py import vindect
""   " todo enne - use py vindect.setDefaults to set defaults from current values
"" endif
"" set syntax=mysyntax
