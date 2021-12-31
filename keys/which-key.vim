nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'
" set timeoutlen=10

let g:which_key_use_floating_win = 0

highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let g:which_key_map['w'] = [ ':bw'                        , 'buffer close']
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'commet' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

let g:which_key_map.s = {
            \ 'name' : '+search' ,
            \ '/' : [':History/'     , 'history'],
            \ ';' : [':Commands'     , 'commands'],
            \ 'a' : [':Ag'           , 'text Ag'],
            \ 'b' : [':BLines'       , 'current buffer'],
            \ 'B' : [':Buffers'      , 'open buffers'],
            \ 'c' : [':Commits'      , 'commits'],
            \ 'C' : [':BCommits'     , 'buffer commits'],
            \ 'f' : [':Files'        , 'files'],
            \ 'g' : [':GFiles'       , 'git files'],
            \ 'G' : [':GFiles?'      , 'modified git files'],
            \ 'h' : [':History'      , 'file history'],
            \ 'H' : [':History:'     , 'command history'],
            \ 'l' : [':Lines'        , 'lines'] ,
            \ 'm' : [':Marks'        , 'marks'] ,
            \ 'M' : [':Maps'         , 'normal maps'] ,
            \ 'p' : [':Helptags'     , 'help tags'] ,
            \ 'P' : [':Tags'         , 'project tags'],
            \ 's' : [':Snippets'     , 'snippets'],
            \ 'S' : [':Colors'       , 'color schemes'],
            \ 't' : [':Rg'           , 'text Rg'],
            \ 'T' : [':BTags'        , 'buffer tags'],
            \ 'w' : [':Windows'      , 'search windows'],
            \ 'y' : [':Filetypes'    , 'file types'],
            \ 'z' : [':FZF'          , 'FZF'],
            \ }

call which_key#register('<Space>', "g:which_key_map")
