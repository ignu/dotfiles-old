set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

set listchars=tab:▸\ ,eol:¬

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

color blackboard
set number
set columns=140
set guioptions-=r
set gfn=Monaco
let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
set vb t_vb= 
map <F5> :!ruby %<CR>
syntax on 
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize


