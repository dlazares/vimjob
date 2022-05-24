"" Vim - Plug settings
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim'
Plug 'flazz/vim-colorschemes'
Plug 'sickill/vim-monokai'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'pantharshit00/vim-prisma'
Plug 'rust-lang/rust.vim'
" Initialize plugin system
call plug#end()

filetype plugin indent on
syntax on " Turn syntax highlighting on
set re=0 " Use new regex engine for better syntax highlighting performance

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

set clipboard=unnamed " Paste from clipboard?
set number " Set line numbers
syntax enable

" Window splitting controls
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
        elseif (coc#rpc#ready())
            call CocActionAsync('doHover')
              else
                  execute '!' . &keywordprg . " " . expand('<cword>')
 endif
 endfunction

 " Ctrlp settings
 " nnoremap <Leader>p :CtrlP<CR>;wq
 " let g:ctrlp_custom_ignore =
 " 'node_modules\|DS_Store\|git\|build\|.*dist\/.*js'
 "
 " " File backup settings
 " set nobackup
 " set nowb
 " set noswapfile
 "
 " set foldmethod=syntax
 " set nofoldenable
 " augroup javascript_folding
 "     au!
 "         au FileType javascript setlocal foldmethod=syntax
 "         augroup END
 "
 "         " Prettier settings
 autocmd BufWritePre *.js PrettierAsync                                                                                                      
 autocmd BufWritePre *.ts PrettierAsync                                                                                         
 autocmd BufWritePre *.tsx PrettierAsync                                                                                         
 autocmd BufWritePre *.jsx PrettierAsync

 " Tab autocomplete for COC
 " " use <tab> for trigger completion and navigate to the next complete item
 " function! s:check_back_space() abort
 "   let col = col('.') - 1
 "     return !col || getline('.')[col - 1]  =~ '\s'
 "     endfunction
 "
 "     inoremap <silent><expr> <Tab>
 "           \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<Tab>" :
       \ coc#refresh()

 " Make <CR> auto-select the first completion item and notify coc.nvim to
 " " format on enter, <cr> could be remapped by other vim plugin
 " inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
 "                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

 " Shift - Tab to go back
 " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
 " inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
 "
