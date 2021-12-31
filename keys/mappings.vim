" Omnicomplete Navigation
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Resize Windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Easy Escape
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Tab Switching
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

" <TAB>: Completion.
inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

" Indentation
vnoremap < <gv
vnoremap > >gv

" Line Movement
nnoremap <A-j> <Esc>:m .+1<CR>==gi
nnoremap <A-k> <Esc>:m .-2<CR>==gi

vnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m .-2<CR>==
vnoremap p _dP

xnoremap J :mve '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
xnoremap <A-k> :move '<-2<CR>gv-gv

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"
