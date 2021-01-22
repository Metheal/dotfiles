" bu kisim :PlugInstall komutuyla pluginleri yukluyor
" Plugin manageri indirmek icin:
" https://github.com/junegunn/vim-plug
" ultisnips plugini icin python3 kurulu olmasi gerekiyor
call plug#begin('~/.vim/plugged') 
Plug 'dracula/vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-endwise'
Plug 'rstacruz/vim-closer'
call plug#end()

" bu kismin aciklamalari yanlarinda
colorscheme dracula " renk duzeni
set nu rnu " dinamik satir numaralari
set ruler " statuslineda satir ve karakter numarasi
set autoindent " autoindent
set smartcase " arama kisminda case sensitive
syntax on " dosta tipine gore syntax highlighting
set guifont=Courier_New:h14:cTURKISH:qDRAFT " gVim'de fontum
set expandtab " tabler bundan sonra bosluk
set tabstop=4 " bir tab = 4 bosluk
set shiftwidth=4 " bir shiftin uzunlugu, usttekiyle esit olursa iyi olur
set backspace=2 " silme tusunu kullanabilir yapar
set backspace=indent,eol,start " usttekiyle birlikte
set clipboard=unnamed " sistem clipboardini kullanir
set laststatus=2 " statuslinenin 2. seviyesi
set statusline= " bunu eklemesek de olur
set foldmethod=syntax " foldu syntaxe gore yapar normalde manual
set nofoldenable " dosya acildiginda auto foldu engeller
set foldlevel=2 " bu olmadiginda sorun cikiyor foldda
set wildmenu " command satirinda onerileri cikarir

" bu kisim yeni satir ekleme isleminden sonra normal moda aliyor
nnoremap o o<Esc>
nnoremap O O<Esc>

let g:output = 'D:\Programlama\a.exe' " TO BE CHANGED, program output location
"let g:output = '%:r.exe' " uncomment this to save it as its own name

" C++ save, compile and run on F5
autocmd filetype cpp noremap <F5> :w <bar> execute "!g++ -std=c++11 -Wall % -o " . expand(g:output) . " && " . expand(g:output) <CR>

" C save, compile and run on F5
autocmd filetype c noremap <F5> :w <bar> execute "!gcc -Wall % -o " . expand(g:output) . " && " . expand(g:output) <CR>

" Tum yorumlari silmek icin normal modda sunlara bas: Gvi"y:@"<Enter>
" To make all the comments go, type these in normal mode: Gvi"y:@"<Enter>
"%s/ \".*$//g | %s/\".*\n//g" some 'magic' here hehe
