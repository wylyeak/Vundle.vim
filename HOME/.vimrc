set nocompatible
set number
set hlsearch
set tabstop=4
"set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set showmatch
set smartindent
set laststatus=2
set ignorecase
set smartcase
set autoread
set incsearch
set fileencodings=utf-8,gbk
set whichwrap=b,s,<,>,[,]  "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
"插入模式下移动
"inoremap <c-j> <down>
"inoremap <c-k> <up> "inoremap <c-l> <right> "inoremap <c-h> <left> "=================================================== "修改leader键为逗号 let mapleader=","
"tab切换
nnoremap <leader>t gt
nnoremap <leader>r gT
"使用<leader>空格来取消搜索高亮
nnoremap <leader><space> :noh<cr>
"html中的js加注释 取消注释
nmap <leader>h I//jj
nmap <leader>ch ^xx
nmap <silent> <leader>t :NERDTree<cr>

colorscheme desert
set foldmethod=manual
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
"vundle{
filetype off        " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
nmap <F8> :TagbarToggle<CR>
"使用<leader>空格来取消搜索高亮
nnoremap <leader><space> :noh<cr>
set wildignore+=*.so,*.swp,*.zip,*/.svn/*

"ycm{"
let g:ctrlp_working_path_mode = 'rw'
let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::'],
			\   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
			\   'lua' : ['.', ':'],
			\   'erlang' : [':'],
			\ }
let g:ycm_filetype_blacklist = {
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'text' : 1,
			\}
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>','<Enter>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_confirm_extra_conf = 0
"}

"#相较于Command-T等查找文件的插件，ctrlp.vim最大的好处在于没有依赖，干净利落
Bundle 'kien/ctrlp.vim'
"#在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Bundle 'AutoClose'
"#神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
Bundle 'ZenCoding.vim'
"#在()、""、甚至HTML标签之间快速跳转；
Bundle 'matchit.zip'
"#显示行末的空格；
Bundle 'ShowTrailingWhitespace'
"#JS代码格式化插件；
Bundle '_jsbeautify'
"#用全新的方式在文档中高效的移动光标，革命性的突破
Bundle 'EasyMotion'
let g:EasyMotion_leader_key = '<Leader><Leader>' 
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
let g:EasyMotion_grouping = '2'
"#自动识别文件编码；
Bundle 'FencView.vim'
"#必不可少，在VIM的编辑窗口树状显示文件目录
Bundle 'The-NERD-tree'
"#NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Bundle 'The-NERD-Commenter'
let NERDShutUp=1
"支持单行和多行的选择，//格式
map <c-h> ,c<space>
"#解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码。
""Bundle 'UltiSnips'
""let g:UltiSnipsExpandTrigger="<c-j>"
""let g:UltiSnipsJumpForwardTrigger="<c-j>"
""let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"#让代码更加易于纵向排版，以=或,符号对齐
Bundle 'Tabular'
"#迄今位置最好的自动VIM自动补全插件了吧
"#Vundle的这个写法，是直接取该插件在Github上的repo
""Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
"Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/VisIncr'
"Bundle 'tpope/vim-rails'
Bundle 'othree/xml.vim'
"Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
call vundle#end()     
"放置在Bundle的设置后，防止意外BUG"
filetype plugin indent on
syntax on
function! TwoSpace()
	setlocal tabstop=2
  setlocal shiftwidth=2
endfunction
au FileType ruby call TwoSpace()
au FileType coffee call TwoSpace()
au FileType vim call TwoSpace()
au FileType eruby call TwoSpace()
" HAML hax {{{
" Haml likes indents of 2 spaces, just like our ruby.
au FileType haml call TwoSpace()
" }}}
