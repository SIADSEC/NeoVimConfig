if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'Th3Whit3Wolf/one-nvim'                               " One Theme
    Plug 'joshdick/onedark.vim'                                " OneDark Theme
    Plug 'neoclide/coc.nvim', {'branch': 'release'}            " CoC
    Plug 'vim-airline/vim-airline'                             " Airline
    Plug 'vim-airline/vim-airline-themes'                      " Airline Themes
    Plug 'francoiscabrol/ranger.vim'                           " Ranger
    Plug 'rbgrouleff/bclose.vim'                               " Ranger Dep
    Plug 'tpope/vim-commentary'                                " Comment
    Plug 'norcalli/nvim-colorizer.lua'                         " Colorizer
    Plug 'junegunn/rainbow_parentheses.vim'                    " Rainbow
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }        " FzF
    Plug 'junegunn/fzf.vim'                                    " FzF
    Plug 'airblade/vim-rooter'                                 " Rooter
    Plug 'mhinz/vim-startify'                                  " Startify
    Plug 'mhinz/vim-signify'                                   " Git
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'liuchengxu/vim-which-key'                            " WhichKey
    Plug 'honza/vim-snippets'                                  " Snippets

call plug#end()
