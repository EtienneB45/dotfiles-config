" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <F2> :NERDTreeTabsToggle<CR>


" custom key bindings for tmux navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <leader>h :TmuxNavigateLeft<cr>
nnoremap <silent> <leader>l :TmuxNavigateRight<cr>
nnoremap <silent> <leader>k :TmuxNavigateUp<cr>
nnoremap <silent> <leader>j :TmuxNavigateDown<cr>


" map run current script
au BufRead,BufNewFile *.py nnoremap <C-x> :!python3 %<CR>
au BufRead,BufNewFile *.sh nnoremap <C-x> :!./%<CR>

map <leader>gd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" normal mode remap keys
" Press F4 to toggle highlighting on/off, and show current value."
noremap <F4> :set hlsearch! hlsearch?<CR> 
" Enable folding with F5 key
nnoremap <F5> za
nnoremap <leader>s :w<Enter>
nnoremap <leader>q :q<CR>
nnoremap <leader>sq :wq<CR>
nmap <leader>, <Plug>NERDCommenterToggle
nnoremap <leader>sv :so ~/.vim/vimrc<CR>
" search and replace
nnoremap <leader>f% :%s/\<<C-r><C-w>\>//g<left><left>
nnoremap <leader>fg :.s/\<<C-r><C-w>\>//g<left><left>
nnoremap <leader>fG :.,$s/\<<C-r><C-w>\>//g<left><left>
nnoremap <F3> *
nnoremap è n 
nnoremap _ N

" shortcut for parenthesis
nnoremap <leader>( ciW()<ESC>hp
nnoremap <leader>) f)xF(xE
nnoremap <leader>[ ciW[]<ESC>hp
nnoremap <leader>]  f]xF[xE
nnoremap <leader>{ ciW{}<ESC>hp
nnoremap <leader>} f}xF{xE
nnoremap <leader>'  ciW''<ESC>P
nnoremap <leader>"  ciW""<ESC>P

nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap <CR> o<Esc>

" characterwise the current word
nnoremap <leader>t viw
nnoremap <leader>T viW

" remap copy/cut/paste keys
nnoremap <leader>x "xdiw
nnoremap <leader>p diw"xP

" remap cursor movement keys
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
nnoremap <C-l> g_
nnoremap <C-h> ^
vnoremap <C-l> g_
vnoremap <C-h> ^
nnoremap n e
nnoremap N E
nnoremap , w
nnoremap ? W
nnoremap § ?

" remap delete/replace keys
nnoremap q x
nnoremap x diw
nnoremap X diW
nnoremap <C-z> u
nnoremap u <Nop>
nnoremap U <Nop>
nnoremap w m
nnoremap W `
nnoremap m q
nnoremap M @

" remap tab keys
nnoremap tn :tabnew
nnoremap tq :tabdo q<cr>
nnoremap <tab> gt
nnoremap <S-tab> gT
if has ('nvim')
	nnoremap te :tabnew term://bash<CR>A
	tnoremap <Esc> <C-\><C-n>
    nnoremap <M-n> :bn<cr>
    nnoremap <M-b> :bp<cr>
	nnoremap <C-w> :bw<cr>
else
	nnoremap <C-d> :sh<CR>
endif


" visual remap keys 
vnoremap <leader>( c()<ESC>hp 
vnoremap <leader>) "xdhxxh"xp
vnoremap <leader>[ c[]<ESC>hp 
vnoremap <leader>y "xy
vnoremap d "xx
vnoremap <leader>'  c''<ESC>P
vnoremap <leader>"  c""<ESC>P
vnoremap q x
vnoremap n e
vnoremap N E
vnoremap , w
vnoremap ? W
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>
vnoremap <C-l> g_
vnoremap <C-h> ^
" keep the visual mode on the selection after indent
vnoremap > >gv 
vnoremap < <gv
vnoremap <leader>f y:.,$s/\<<C-r>"\>/

" insertion mode remap keys
inoremap jk <Esc>
inoremap <Space><CR> <ESC>o
inoremap <C-z> <ESC>u

" operator pending remap keys
onoremap n e
onoremap N E
nnoremap , w
nnoremap ? W
nnoremap § ?

"remap for commandline
nnoremap <leader>PI :PluginInstall<cr>
nnoremap <leader>PC :PluginClean<cr>
nnoremap <C-e> :edit<cr>

"remap for terminal command
"scp file in other server
nnoremap <leader>scp :!scp ~/.vim/*.vim ~/.vim/vimrc :.vim<C-left>
nnoremap <leader>zsh :!source ~/.zshrc<cr>

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
