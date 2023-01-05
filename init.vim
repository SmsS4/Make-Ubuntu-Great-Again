" You can use https://github.com/NvChad/NvChad instead
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

:set completeopt-=preview " For No Previews

