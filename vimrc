
"Make Tabs Pretty
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"Set Invisibles like TextMate
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

color blackboard
set number
set columns=140
set guioptions-=r
set gfn=Monaco

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" UTF-8 All the way
scriptencoding utf-8

let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
set vb t_vb= 
map <F5> :!ruby %<CR>
syntax on 
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set wildmode=list:longest
map <Leader>t :FuzzyFinderFile<Enter>
