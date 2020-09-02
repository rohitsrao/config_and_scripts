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
	Plug 'vim-scripts/AutoClose'
	Plug 'tpope/vim-fugitive'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdtree'
	Plug 'tmhedberg/simpylfold'
call plug#end()
" End of vim-plug Managaer

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

" ----------- Settings for vim-LaTeX ----------- 
" Invoke Latex-Suite when a tex file is opened 
"filetype plugin on
" Automatic Indentation
"filetype indent on
" ----------- Latex settings ----------- 
" AutoCompile and Preview LaTeX in Vim
" C compiles tex files
" B compiles bibtex files
" P previews pdf file
" All mappings are in normal mode and must be executed from the main tex file
" for bibliography
" Idea sourced from https://www.youtube.com/watch?v=igX_QbCS5bg
"map C :! pdflatex %<CR><CR>
"map B :! bibtex %:t:r<CR><CR>
"map P :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
" Defining a recording with sequence CBCCP
"let @q = 'CBCCP'
" Setting Conceal Level to 0 so that math equations appear as LaTeX commands
"set conceallevel=0
" Set spellcheck only for tex files
"autocmd FileType tex setlocal spell
