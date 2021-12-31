" Set Vim Leader
let g:mapleader = "\<Space>"

syntax enable                                       " Syntax Highlighting

set modifiable                                      " Enable Modifications
set hidden                                          " Unload Buffers
set nowrap                                          " No Word Wrap
set encoding=utf-8                                  " Character Encoding
set pumheight=10                                    " PopUp Menu Height
set fileencoding=utf-8                              " File Encoding
set ruler                                           " Cursor Position
set cmdheight=2                                     " Command Prompt Height
set iskeyword+=-                                    " Ignore Dashes
set mouse=a                                         " Enable Mouse
set splitbelow                                      " Split Below
set splitright                                      " Split Right
set t_Co=256                                        " 256 Colors
set termguicolors                                   " GUI COlors
set conceallevel=0                                  " Show Concealed Text
set tabstop=4                                       " Tab Width
set softtabstop=4                                   " Tab Spaces
set shiftwidth=4                                    " Indent Width
set smarttab                                        " Enable Smart Tab
set expandtab                                       " Tab in Spaces
set smartindent                                     " Smart Indentation
set autoindent                                      " Auto Indentation
set laststatus=0                                    " Display Status Line
set number                                          " Line Numbers
set cursorline                                      " Current Line Highlight
set colorcolumn=80,120                              " Set Ruler Column
set background=dark                                 " Background Color
set showtabline=2                                   " Display Tab Line
set noshowmode                                      " Hide Current Mode
set nobackup                                        " No Backup
set nowritebackup                                   " No Backup File
set noswapfile                                      " No Swap File
set updatetime=300                                  " Faster Auto Complete
set timeoutlen=500                                  " Faster Timeout
set clipboard=unnamedplus                           " Global Clipboard

" Colour Column Color
highlight colorColumn ctermbg=0 guibg=grey

hi LineNr ctermbg=NONE guibg=NONE

" Auto Source VimRC
au! BufWritePost $MYVIMRC source %

" Disable Comment Continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Sudo Powers
cmap w!! w !sudo tee %
