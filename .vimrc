set nocompatible           
filetype off       

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'alvan/vim-closetag'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'fatih/vim-go'

call vundle#end()   

:set expandtab
:set tabstop=4
:set shiftwidth=4

syntax enable
:set background=dark

filetype plugin indent on

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.blade.php"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

let g:ctrlp_max_files=0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .modman
        \ --ignore magento/vendor
        \ --ignore node_modules
        \ --ignore bower_components
        \ --ignore .hg
        \ --ignore .DS_Store
        \ --ignore "**/*.pyc"
        \ -g ""'
endif

:set relativenumber
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
:set numberwidth=3

au FileType go setlocal ts=8 sw=8 expandtab
