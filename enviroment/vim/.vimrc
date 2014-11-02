"inoremap ( ()<LEFT>
inoremap [ []<LEFT>
"inoremap { {}<LEFT> 
"inoremap { {<Enter><Enter>}<UP><RIGHT>


"-- omnicppcomplete setting --
"" ?.?F3?..¨¨???.????.??.?¡§?..?.?¨¨?..?.????.??????..??..?.ab??.
imap <F3> <C-X><C-O>
" ?.?F2???.?¡è.????.?
"imap <F2> <C-X><C-I>
imap <F2> <C-X><C-I>
set completeopt=menu,menuone " ???.??¨¨.¨¨???.???.
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
"let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column
let OmniCpp_ShowAccess=1 

"--ctags setting--    " ?.?F5?..?..tag?.????.??.
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
"set tags+=~/arm/linux-2.6.24.7/tags "add new tags file(?..?..tags?.????.???tags -R ?..tags?.???.???.??¡ãgs?¡ì.?¡ã?..??.???.ctrlset tags+=/home/caozoux/work/android/r42b/linux/kernel/tags
"set tags+=/home/sdh/caozoux/r44b/linux/kernel/tags
set tags+=/home/sdh/caozoux/tags

"-- Taglist setting --
let Tlist_Ctags_Cmd='ctags' "?.???.?????.?.??..?.???.
let Tlist_Use_Right_Window=1 "¨¨???.???.?¡è.??¨¨????.?..?¡ãlet Tlist_Show_One_File=0 "¨¨??aglist?.???..?¡À¡è¡è??..
let Tlist_File_Fold_Auto_Close=1 "?.??..????????.?.
let Tlist_Exit_OnlyWindow=1 "??.aglist?..?.???..???.???.??..?¡§?.??im    "?..???????.
let Tlist_Process_File_Always=1 "??..???.
let Tlist_Inc_Winwidth=0

filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete

"-- WinManager setting --
let g:winManagerWindowLayout='FileExplorer|TagList' " 设置?.»¬è.?..?.»¶
"let g:persistentBehaviour=0 " å.??.?è.件é³éº.????im    nmap wm :WMToggle<cr>

" -- MiniBufferExplorer --
let g:miniBufExplMapWindowNavVim = 1 " ?.?Ctrl+h/j/k/lï.以å¢å½..ç.?.?ä·¦?³ç
let g:miniBufExplMapWindowNavArrows = 1 " ?.?Ctrl+ç¤´ï.以å¢å½..ç.?.?ä·¦?³ç
let g:miniBufExplMapCTabSwitchBufs = 1 " ?..以ä¸¤个?..ïtrl+tab移å¸.?äuffer并å½..ç.?.?ïtrl+Shift+tab移å¸.?äuffer并å½..ç.?.?ïbuntu好å¸.
"let g:miniBufExplMapCTabSwitchWindows = 1 " ?..以ä¸¤个?..ïtrl+tab移å¸.?ä.ïtrl+Shift+tab移å¸.?ä.?£ïbuntu好å¸..?
let g:miniBufExplModSelTarget = 1    " ä??¨ä.?è.容çª..ï?TagListç.ï¸­?.??.¸­?.uffer

if has("cscope")
   set csprg=/usr/bin/cscope        " ?..?¨æ§èscope?..ä   set csto=0                        " 设置cstag?½令?¥æ¬¡å¼.?..cscope?°æº..?¾æ­¾æ»¶ï?..?..?.»¶?..cscope?°æº
   set cst                            " ?..?.´¢cscope?°æº..?..?.»¶
   set cscopequickfix=s-,c-,d-,i-,t-,e-    " 使çuickFixç.?¥æ¤?scope?¥æ».. 
   if filereadable("cscope.out")    " ?¥å..å?å.cscope?°æº.?添å¯¥æ.???im            
       cs add cscope.out
   elseif $CSCOPE_DB != ""            " ??.?.??.??..CSCOPE_DBä¸º空ï.·»?..?..?..?.???im
        cs add $CSCOPE_DB
   endif
   cs add /home/sdh/caozoux/r44b/linux/kernel/cscope.out
   set csverb
endif
map <F4> :cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
imap <F4> <ESC>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>

"get the declare
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"get the define
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"get the function called
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"get the specific string
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" egrep mode find
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" find specific file name
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" find the number of called function in this function
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"showmark set
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

"set expandtab
"set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set nocompatible
filetype plugin on
syntax on

set number
set autowrite

"set python
"?..检æ.件类?.¹¶?.½½?¸å..çfiletype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
filetype plugin on
set ofu=syntaxcomplete
autocmd FileType python?set omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim


" run file .py
"au BufRead *.py map <buffer> <F6> :w<CR>:!/usr/bin/env python % <CR>
map <F6> :make clean<CR><CR><CR>
map <F7> :make<CR><CR><CR> :copen<CR><CR>
"map <F8> :make bootimage<CR><CR><CR> :copen<CR><CR>
map <F9> :cn<CR>
map <F2> :w<CR><CR><CR>
