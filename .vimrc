set nu

set ts=4
set noro
set expandtab
set shiftwidth=4
set smarttab

set nocompatible   
set laststatus=2

set foldmethod=syntax
set foldlevel=99
set encoding=utf-8

set ignorecase
set hlsearch
set noswapfile
se t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
call plug#end()   

filetype plugin indent on 
syntax on

" vim-color-solarized
" set background=dark
" colorscheme solarized

" nerdtree
map <F2> :NERDTreeToggle<CR>

" gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" ycm
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_cpp_checkers = ['gcc', 'clang']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" indentLine
let g:indentLine_setColors = 0

" switch window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" switch buffer
map <C-N> :bnext<CR>

" folder
nnoremap <space> za
