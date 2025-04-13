" Vim pluggin manager requirement:
" https://github.com/junegunn/vim-plug

" 当打开nvim时，若没有下载vim-plug则自动下载
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set ignorecase              " Ignore upper case or lower case when searching
set smartcase               " Override 'ignorecase' if there are upper case chars
set nohls                   " Don't highlight searching result
set fileformat=unix         " Set end of line style to LF
set clipboard+=unnamedplus  " Share system clipboard


" 用H替换掉^
noremap H ^
" 用L替换掉$
noremap L $

noremap J 5j
noremap K 5k

nnoremap <A-k> :m-2<CR>
nnoremap <A-j> :m+1<CR>

noremap <A-r> :so ~/.config/nvim/init.vim<CR>

let mapleader = "\<space>"

if exists('g:vscode')
    call plug#begin('~/.config/nvim/autoload/')
        " 快速跳转
        Plug 'easymotion/vim-easymotion'
        Plug 'tpope/vim-surround'   " Delete, change and add surroundings
        " Plug 'https://github.com/h-hg/fcitx.nvim.git'
        Plug 'tpope/vim-surround'
    call plug#end()

    set cmdheight=10
    let g:clipboard = g:vscode_clipboard    " Use vscode clipbard API
    set nobackup

    " 转到文件中上一个问题
    nnoremap g[ <Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>
    " 转到文件中下一个问题
    nnoremap g] <Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>

    " 切换行注释
    nnoremap gc <Cmd>call VSCodeNotify('editor.action.commentLine')<CR>
    " 切换块注释
    nnoremap gC <Cmd>call VSCodeNotify('editor.action.blockComment')<CR>
    " 切换当下折叠
    nnoremap zz <Cmd>call VSCodeNotify('editor.toggleFold')<CR>

    " easymotion相关配置
    let g:EasyMotion_smartcase = 0
    " easymotion前缀 leader leader
    map <Leader> <Plug>(easymotion-prefix)
    map <Leader>s <Plug>(easymotion-overwin-f2)
    map <Leader>l <Plug>(easymotion-lineforward)
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
    map <Leader>h <Plug>(easymotion-linebackward)
else
    set relativenumber          " Show relative line number
    set cursorline              " Highlight current line
    set noswapfile              " Disable swap file
    set number                  " Show line number
    set mouse=a
    " 设置编码格式
    set encoding=utf-8
    " 启用256色
    set t_Co=256
    " 开启文件类型检查
    filetype indent on
    " 设置自动缩进
    set autoindent
    " 设置tab缩进数量
    set tabstop=4
    " 设置>>与<<的缩进数量
    set shiftwidth=4
    " 将缩进转换为空格
    set expandtab
    " 自动高亮匹配符号
    set showmatch
    " 自动高亮匹配搜索结果
    set nohlsearch
    " 开启逐行搜索，也就是说按下一次按键就继续一次搜索
    set incsearch
    " 开启命令补全
    set wildmenu

    map <Leader> <Plug>(easymotion-prefix)
    map s <Plug>(easymotion-overwin-f2)
    map <Leader>l <Plug>(easymotion-lineforward)
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
    map <Leader>h <Plug>(easymotion-linebackward)

    call plug#begin('~/.config/nvim/autoload/')
        " 快速跳转
        Plug 'easymotion/vim-easymotion'
        " Plug 'https://github.com/h-hg/fcitx.nvim.git'
        Plug 'tpope/vim-surround'
        Plug 'Mofiqul/dracula.nvim'
   call plug#end()
   colorscheme dracula
endif
