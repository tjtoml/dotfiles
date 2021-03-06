set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'Shougo/unite.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-bufferline'
Plugin 'Lokaltog/powerline-fonts'
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
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
" >>>>>>>>>>>>>>>>>>MYSTUFF<<<<<<<<<<<<<<<<<
" 
" Set Hybrid line numbers
set relativenumber
set number

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
nnoremap <leader>f :Unite -start-insert file<return>
nnoremap <leader>b :Unite -start-insert buffer<CR>
nnoremap <leader>g :!cd /home/tjtoml/devel/cpp/caveStory/ && make
nnoremap <leader>c :ProjectBuild
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap (<CR>  (<CR>)<Esc>O
inoremap {{     {
inoremap {}     {}
"Make splits behave more naturally
set splitbelow
set splitright

inoremap {{     {
inoremap {}     {}
"Make splits behave more naturally
set splitbelow
set splitright

"Autocompletion for Java using eclim
let g:EclimCompletionMethod = 'omnifunc'
augroup AutoReloadVimRC
	au!
	" automatically reload vimrc when it's saved
	au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" stuff for vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'zenburn'
set laststatus=2
set noshowmode
let g:airline_section_c = '%t'

let g:airline_left_seperator = "\ue0b0"
let g:airline_right_seperator = "\ue0b2"
colorscheme zenburn 
set cul

augroup BgHighlight
	autocmd!
	autocmd WinEnter * set cul 
	autocmd WinLeave * set nocul  
augroup END
let g:ycm_autoclose_preview_window_after_completion = 1
