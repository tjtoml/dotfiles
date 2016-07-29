set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" scripts on GitHub repos
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'powerline/powerline'
"Plugin 'fatih/vim-go'
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'CycleColor'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
call vundle#end()

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
" >>>>>>>>>>>>>>>>>>MYSTUFF<<<<<<<<<<<<<<<<<
" 
" Set Hybrid line numbers
set relativenumber
set number
set rtp+=/usr/lib64/python2.7/site-packages/powerline/bindings/vim
" turn on syntax highlighting
syntax enable
" 256 Colors
set t_Co=256

"KEYMAPS
nmap <F9> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let mapleader =',' 
"Make splits behave more naturally
set splitbelow
set splitright

"Spellchecking in markdown
autocmd BufRead,BufNewFile *.markdown setlocal spell

" stuff for vim-airline
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'zenburn'
set laststatus=2
set noshowmode
"let g:airline_section_c = '%t'

let NERDTreeShowHidden=1

let g:airline_left_seperator = "\ue0b0"
let g:airline_right_seperator = "\ue0b2"
set background=dark
colorscheme solarized 
set cul

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul 
	autocmd WinLeave * set nocul  
augroup END
let g:ycm_autoclose_preview_window_after_completion = 1
set backspace=2

let g:ycm_glabal_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Gvim stuff

if has('gui_running')
	set guifont=Anonymous\ Pro\ for\ Powerline\ 14
endif

