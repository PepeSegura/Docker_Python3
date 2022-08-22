set number
set	relativenumber
syntax on
set autoindent
set smartindent
set mouse=a
set cursorline
set ruler

colorscheme sublimemonokai

inoremap <C-c> <Esc>:Lex<cr>:vertical resize 35<cr>
nnoremap <C-c> <Esc>:Lex<cr>:vertical resize 35<cr>

inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
