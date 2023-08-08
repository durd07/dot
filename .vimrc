if has("nvim")
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath=&runtimepath
endif

if empty(glob('~/.vim/autoload/plug.vim'))
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
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
Plug 'durd07/fzf.vim'
Plug 'skywind3000/asyncrun.vim'

Plug 'durd07/vim-monokai'

Plug 'preservim/tagbar'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
