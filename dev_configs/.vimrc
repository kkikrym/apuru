scriptencoding utf-8
set encoding=utf-8

" ----------------------------------------------------------
" クリップボードからのペースト
" ----------------------------------------------------------
" 挿入モードでクリップボードからペーストする時に自動でインデントさせないようにする
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif


set number "行番号の表示
set list "タブ、空白、改行を可視化
set title "編集中ファイル名の表示
set visualbell t_vb= "ビープ音を視覚表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置を表示
set ambiwidth=double "○や□などの文字が重ならないようにする
syntax on "コードに色をつける
filetype on
filetype plugin indent on
set foldmethod=indent foldlevel=99
"----------------------------------------------------------
" カッコ・タグの対応
"----------------------------------------------------------
set showmatch " 括弧の対応関係を一瞬表示する
set matchtime=3
set matchpairs& matchpairs+=<:>
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
let g:lexima_enable_newline_rules=0   " 括弧の改行ルールを無効にする

"===== 文字、カーソル設定 =====
let mapleader = "\<Space>"
set fenc=utf-8 "文字コードを指定
set whichwrap=b,s,h,l,<,>,[,],~ "行頭、行末で行のカーソル移動を可能にする
set backspace=indent,eol,start "バックスペースでの行移動を可能にする
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮ "不可視文字の指定
set expandtab "タブをスペースに変換する
set autoindent "自動インデント
set smartindent "オートインデント
set virtualedit=onemore "カーソルを行末の一つ先まで移動可能にする
set tabstop=4
nnoremap ; :
inoremap <silent> jj <ESC>
set cursorline 
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"===== モードによってカーソルを変更 =====
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"----------------------------------------------------------
" ファイル管理
"----------------------------------------------------------
" バックアップファイルやスワップファイルを作成しない
set nowritebackup
set nobackup
set noswapfile

"----------------------------------------------------------
" コマンドモード
"----------------------------------------------------------
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

"===== マウス設定 =====
set mouse=a
set ttymouse=xterm2

"===== 検索設定 =====
set ignorecase "大文字、小文字の区別をしない
set smartcase "大文字が含まれている場合は区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索した文字を強調
set incsearch "インクリメンタルサーチを有効にする
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"----------------------------------------------------------
" マクロおよびキー設定
"----------------------------------------------------------
inoremap <Left><Left> <Esc>_i
inoremap <Right><Right> <Esc>$i<Right>

" カーソル位置の記憶
augroup vimrcEx
  autocmd!
    autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line('$') |
      \   exe "normal! g`\"" |
      \ endif
augroup END

let g:sql_type_default = 'mysql'

set clipboard+=unnamed

" ----------------------------------------------------------
" ステータスライン
" ----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの位置を表示する


autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

