# remove toolbar
set guioptions-=T 
set guifont=Monaco:h12
set antialias
" Go to full width and height in full screen mode.
set fuoptions=maxvert,maxhorz   
set transparency=3
" Don't highlight search result.
  set nohlsearch

" Don't flick cursor.
  set guicursor=a:blinkon0

" TABS: safari style tab navigation
  nmap <D-[> :tabprevious<CR>
  nmap <D-]> :tabnext<CR>
  map <D-[> :tabprevious<CR>
  map <D-]> :tabnext<CR>
  imap <D-[> <C-O>:tabprevious<CR>
  imap <D-]> <C-O>:tabnext<CR>
  imap <D-[> <uuuu
  imap <D-[> <uuuu
  imap <D-[> <uuuu

" TABS: Firefox style, open tabs with command-<tab number>
  map <silent> <D-1> :tabn 1<CR>
  map <silent> <D-2> :tabn 2<CR>
  map <silent> <D-3> :tabn 3<CR>
  map <silent> <D-4> :tabn 4<CR>
  map <silent> <D-5> :tabn 5<CR>
  map <silent> <D-6> :tabn 6<CR>
  map <silent> <D-7> :tabn 7<CR>
  map <silent> <D-8> :tabn 8<CR>
  map <silent> <D-9> :tabn 9<CR>

" bind command-] to shift right
  nmap <D-]> >>
  vmap <D-]> >>
  imap <D-]> <C-O>>>

" bind command-[ to shift left
  nmap <D-[> <<
  vmap <D-[> <<
  imap <D-[> <C-O><<

# setup peepcode toolbar
if has("gui_macvim")
   macmenu &File.New\ Tab key=<nop>
   map <D-t> <Plug>PeepOpen
end
