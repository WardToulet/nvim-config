call plug#begin()

" Linter
Plug 'dense-analysis/ale'

" LSP
Plug 'neoclide/coc.nvim'
set cmdheight=2
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "<\C-p>" : "<\C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction
 
inoremap <silent><expr> <c-span> coc#refresh()

inoremap <expr><cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>qf <Plug>(coc-fix-current)

noremap <leader><leader> <c-^>

Plug 'neoclide/coc-tsserver', 	{ 'do': 'yarn install --frozen-lockfile' } 
Plug 'neoclide/coc-highlight', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yaml', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-rls', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-emmet', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-html', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-vimtex', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-yank', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-pairs', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-python', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-tabnine', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-java', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'neoclide/coc-snippets', 	{ 'do': 'yarn install --frozen-lockfile' }
Plug 'coc-extensions/coc-svelte', 	{ 'do': 'yarn install --frozen-lockfile' }
" golang config in coc configfile 

" Snippets
Plug 'honza/vim-snippets'

" Tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

" Router
Plug 'airblade/vim-router'

" Fuzzyfinding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Themes
Plug 'morhetz/gruvbox'

" Sytax highlighting 
Plug 'leafOfTree/vim-svelte-plugin'

" Codi
Plug 'metakirby5/codi.vim'
let g:codi#virtual_text_prefix = "> "
let g:codi#aliases = {
	\ 'javascript.jsx': 'javascript',
	\}

call plug#end()
