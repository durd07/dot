let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'durd07/felixdu_config.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'durd07/quickr-cscope.vim'
Plug 'durd07/quickr-preview.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'ojroques/vim-oscyank'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'skywind3000/asyncrun.vim'

Plug 'durd07/vim-monokai'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
call plug#end()

nmap tb :TagbarToggle<CR>
