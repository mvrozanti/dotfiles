autocmd FileType javascript         let b:run_script = '!clear;xvkbd -window Firefox -text "\Cr" && xdotool keydown alt key Tab; sleep 0.001; xdotool keyup alt'
autocmd FileType python             let b:run_script = '!clear;python3 %'
nnoremap <buffer> <F5> <Esc>:w<CR>:call system(b:run_script)<CR>
inoremap <buffer> <F5> <Esc>:w<CR>:call system(b:run_script)<CR>

" \n not in v$
nnoremap - $h
vnoremap - $h
" systemcopy plugin
vnoremap Y :cp<CR>
nnoremap <C-W> <Esc>:q<CR>
inoremap <C-W> <Esc>:q<CR>
nnoremap <C-S> <Esc>:w<CR>
inoremap <C-S> <Esc>:w<CR>
inoremap jk <Esc>l
vnoremap jk <Esc> 
nnoremap ; ''

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
vnoremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
vnoremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" netbeans<3
inoremap <C-E> <Esc> ddi
nnoremap <C-E> dd

 " kill REPLACE mode
inoremap <Insert> <Esc>

set clipboard=unnamedplus
"set paste " < does not work with jedi, but works w/ YCM
set nocompatible  " be iMproved, required # ??
set nosmd   " short for 'showmode' for powerline
filetype off  " required
set exrc

"move between vim splits
"inoremap <C-H> <Esc> :wincmd h <CR>
"inoremap <C-J> <Esc> :wincmd j <CR>
"inoremap <C-K> <Esc> :wincmd k <CR> 
"inoremap <C-L> <Esc> :wincmd l <CR>
"nnoremap <C-H> :wincmd h 
"nnoremap <C-K> :wincmd k
"nnoremap <C-L> :wincmd l 
"nnoremap <C-J> :wincmd j

"autocomplete colors
highlight Pmenu ctermfg=1 ctermbg=4 guifg=1 guibg=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Clipboard -> cp,cv 
Plugin 'christoomey/vim-system-copy'
let g:system_copy#copy_command='xclip -sel clipboard -i'
let g:system_copy#paste_command='xclip -sel clipboard -o'

"==== plugin manager
Plugin 'VundleVim/Vundle.vim'

"==== plugin manager
Plugin 'pangloss/vim-javascript'
set conceallevel=1
let g:javascript_conceal_function = "ƒ"
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" ==== helpers
Plugin 'vim-scripts/L9'

" ==== File tree
Plugin 'scrooloose/nerdtree'

" ==== Completion
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

" ==== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ==== syntax helpers
Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['eslint']
Plugin 'tpope/vim-surround'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'mitsuhiko/vim-jinja'

" ==== moving / seraching
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'

" ==== snippets
Plugin 'SirVer/ultisnips'

" ==== AUTOCOMPLETE PAIRS
Plugin 'jiangmiao/auto-pairs'

" ==== PLUGIN THEMES
"Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

" ==== Colors and other basic settings
" powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
"set background=
set ruler
set hidden
set number
set relativenumber
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
"let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" ==== NERDTREE
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f
"let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'

" === flake8
let g:flake8_show_in_file=1

" ==== snippets
let g:UltiSnipsExpandTrigger="<A-ENTER>"
let g:UltiSnipsJumpForwardTrigger="<A-ENTER>"
let g:UltiSnipsJumpBackwardTrigger="<A-BACKSPACE>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" ==== moving around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== disable mouse
set mouse=c

" ==== custom commands
"command Jsonfix execute ":%!python3 -m json.tool"
