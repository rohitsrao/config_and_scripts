" Display Hybrid  Line Numbers
set number relativenumber

"Open new vertical split windows on the right
"Open new split windows below
set splitright
set splitbelow

" Disable Parenthesis Matching
set noshowmatch

" UTF-8 Support
set encoding=utf-8

" ----------- Key Mappings ---------

" Disabling Arrow Keys in Normal Mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disabling Arrow Keys in Insert Mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Custom Mapping for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Start of vim-plug Manager
call plug#begin()
	Plug 'vim-scripts/AutoClose'		"Autoclose paranthesis and quotations
	Plug 'tpope/vim-fugitive'		"Git controls from within vim
	Plug 'yggdroot/indentline'		"Indentation line for Python
	Plug 'scrooloose/nerdtree'		"File browser
	Plug 'tmhedberg/simpylfold'		"Code folding
	Plug 'sirver/ultisnips'                 "Code Snippets
	Plug 'lervag/vimtex'			"LaTeX filetype plugin
call plug#end()
" End of vim-plug Managaer

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

"vimtex settings
let g:tex_flavour='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
