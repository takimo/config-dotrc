set nobackup
set showmode
set showmatch
set backspace=2
set number
set ignorecase
set termencoding=utf8
set encoding=japan
set fileencodings=utf-8,euc-jp,iso-2022-jp
set fenc=utf8
set enc=utf8

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

imap <C-j> <esc>

set expandtab
"set noexpandtab

set mouse=a
set ttymouse=xterm2

syntax on
colorscheme darkblue
set shiftwidth=4
set softtabstop=4
set tabstop=4
set ts=4 sw=4

function! InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
                return "\<TAB>"
        else
                if pumvisible()
                        return "\<C-N>"
                else
                        return "\<C-N>\<C-P>"
                end
        endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <expr> = smartchr#one_of(' = ', ' == ', ' === ', '=')

highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

autocmd FileType *.as let g:AutoComplPop_CompleteOption = '.,w,b,u,t,i,k~/.vim/dict/actionscript.dict'
autocmd BufNewFile,BufRead *.as set filetype=actionscript

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
autocmd WinEnter * match WhitespaceEOL /\s\+$/

" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif
