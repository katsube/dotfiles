" ----------------------------------------
" 基本設定
" ----------------------------------------
"文字コードをUFT-8に設定
set fenc=utf-8

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd


" ----------------------------------------
" 見た目
" ----------------------------------------
" 色をつける
syntax on

" カラースキーム
colorscheme elflord

" ダーク系のカラースキームを使う
set background=dark

" 行番号を表示
set number

" 現在の行を強調表示
set cursorline

" 現在の行を強調表示（縦）
" set cursorcolumn

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" インデントはスマートインデント
set smartindent

" ビープ音を可視化
set visualbell

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/


" ----------------------------------------
" Tab
" ----------------------------------------
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" Tab文字を半角スペースにする
" set expandtab

" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4

" 行頭でのTab文字の表示幅
set shiftwidth=4


" ----------------------------------------
" 検索
" ----------------------------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索語をハイライト表示
set hlsearch

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>



" ----------------------------------------
" ステータスライン
" ----------------------------------------
" ファイル名表示
set statusline=%F

" 変更チェック表示
set statusline+=%m

" 読み込み専用かどうか表示
set statusline+=%r

" ヘルプページなら[HELP]と表示
set statusline+=%h

" プレビューウインドウなら[Prevew]と表示
set statusline+=%w

" これ以降は右寄せ表示
set statusline+=%=

" 現在行数/全行数
set statusline+=[%l/%L]

" file encoding
set statusline+=[%{&fileencoding}]

"ファイルフォーマット表示
set statusline+=[%{&fileformat}]

" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2

