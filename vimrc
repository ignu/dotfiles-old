call pathogen#runtime_append_all_bundles()
set nobackup
set nowritebackup
set noswapfile
set t_Co=256

set autoindent
"
"Make Tabs Pretty
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

"Set Invisibles like TextMate
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

color jellybeans

set number
"
"set columns=140
set guioptions-=e
set guioptions-=r

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
"nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" UTF-8 All the way
scriptencoding utf-8

let g:AutoComplPop_IgnoreCaseOption = 0
let g:AutoComplPop_BehaviorKeywordLength = 2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
set vb t_vb=
map <F6> :!ruby %<CR>

syntax on
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"Command j to buffer back
map <D-j> :b#<CR>
map <D-r> :bd<CR>
nmap <Leader>r :bd<CR>
map <D-e> :Ex<CR>
map <D-y> :Vex<CR><C-w>=
map <D-]> :vsp<CR>
map <D-[> :sp<CR>
map <D-\> :tabnew<CR>
map <D-t> :tabnew<CR>

" minibuffexplorer

map <Leader>g :TMiniBufExplorer<CR>
let g:miniBufExplSplitBelow=1  " Put new window above
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplForceSyntaxEnable = 1

map <Leader>t :tabnew<CR>

"next quickfix file
map <D-'> :cnext<CR>

" autocomplete
imap <Tab> <C-N>
imap sao save_and_open_page


map <C-P> O<ESC>P
set wildmode=list:longest
set wildchar=<Tab> wildmenu wildmode=full

nmap <Leader>O O<ESC>
nmap <Leader>o o<ESC>

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd VimResized :TMiniBufExplorer<CR>
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader># :set number<CR>
nmap <leader>n :set nonumber<CR>

nmap <leader>j :e public/javascripts/application.js<CR>

autocmd BufNewFile,BufRead *_spec.rb compiler rspec
hi Folded ctermfg=darkgrey ctermbg=NONE
hi Folded ctermfg=darkgrey ctermbg=NONE

" Hide search highlighting
map <Leader>h :set invhls <CR>

"open file in macvim
map <Leader>m :!mvim % <CR>
"
" show trailing whitespace
set list listchars=tab:»·,trail:

" remove trailing whitespace and replace tabs with spaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" buffer delete
map <Leader>r :bd<CR>

" git blame shortcut
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" autoindent is good
filetype plugin indent on

runtime macros/matchit.vim

" automatically align cucumber tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" make pasting simpler
set pastetoggle=<F2>
map <Leader>V  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>

" make movement keys simpler
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
