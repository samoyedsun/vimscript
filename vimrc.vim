" base config
set fileencodings=ucs-bom,utf-8,gbk,cp936
set nonu
set mouse=n
set tabstop=4
set expandtab
set shiftwidth=4
set hlsearch
set incsearch
set ai!
set ruler
set nohls

" init vundle
set nocompatible              			" 去除VI一致性,必须
filetype off                  			" 必须
set rtp+=~/.vim/bundle/Vundle.vim 		" 设置包括vundle和初始化相关的runtime path
call vundle#begin()			  			" vundle初始化
Plugin 'VundleVim/Vundle.vim' 			" 让vundle管理插件版本,必须
Plugin 'preservim/nerdtree'
Plugin 'spin6lock/vim_sproto'
call vundle#end()            			" 必须 
filetype plugin indent on    			" 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"let s:tmplist = findfile('NERD_tree.vim',$HOME."/.vim/bundle/nerdtree/plugin/", -1)
"if len(s:tmplist) == 0	
"	PluginInstall
"endif

syntax enable
set background=light
colorscheme industry "/usr/share/vim/*/colors/

map <F2> :silent! NERDTreeToggle<CR>
map <F8> :silent! TagbarToggle<CR>
map <F9> :silent! FufCoverageFile<CR>
let NERDTreeWinPos=0     "将NERDTree放置在编辑区,1右边 0左边
let NERDTreeWinSize=20   "设置NERDTree的宽度,默认为30
let NERDTreeShowHidden=1 "显示隐藏文件

" status bar
set laststatus=2
function! Buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
function! File_size(f)
    let l:size = getfsize(expand(a:f))
    if l:size == 0 || l:size == -1 || l:size == -2
        return ''
    endif
    if l:size < 1024
        return l:size.' bytes'
    elseif l:size < 1024*1024
        return printf('%.1f', l:size/1024.0).'k'
    elseif l:size < 1024*1024*1024
        return printf('%.1f', l:size/1024.0/1024.0) . 'm'
    else
        return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
    endif
endfunction
set statusline=%<%1*[B-%n]%*
" TOT is an abbreviation for total
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{File_size(@%)}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
set statusline+=%6*\ %=%m%r%y\ [LEN=%L]\ %*
set statusline+=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
set statusline+=%8*\ [ASCII\->\%03.3b]\ %*
set statusline+=%9*\ [HEX\->\%02.2B]\ %*
set statusline+=%4*\ %P\ \|\ %p%%\ %*
" default bg for statusline is 236 in space-vim-dark
hi User1 cterm=bold ctermfg=0 ctermbg=208
hi User2 cterm=None ctermfg=214 ctermbg=242
hi User3 cterm=None ctermfg=251 ctermbg=240
hi User4 cterm=bold ctermfg=169 ctermbg=239
hi User5 cterm=None ctermfg=208 ctermbg=238
hi User6 cterm=None ctermfg=246 ctermbg=237
hi User7 cterm=None ctermfg=208 ctermbg=238
hi User8 cterm=None ctermfg=251 ctermbg=240
hi User9 cterm=None ctermfg=232 ctermbg=241
