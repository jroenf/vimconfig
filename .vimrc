" .vimrc file van Roen
" --------------------
" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
" This is the personal .vimrc file of Jeroen Franse.
" }
" Environment {

	" Basics {
        set nocompatible " must be first line
        "del set background=dark " Assume a dark background

        " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.

        if has('win32') || has('win64')
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
        " }

    " Setup Bundle Support {
    " The next two lines ensure that the ~/.vim/bundle/ system works
        runtime! autoload/pathogen.vim
        silent! call pathogen#helptags()
        silent! call pathogen#runtime_append_all_bundles()
    " }
"
" }
" Visuals {
color peaksea
set background=dark " assume dark background
if !has('win32') && !has('win64')
	set term=$TERM	" Make arrow and other keys work
endif
filetype plugin indent on	"Automatically detect file types.
syntax on           " syntax highlighing
set mouse=a 		"Automatically enable mouse usage
"}
scriptencoding utf-8
" Keyboard Mapping {
	" Easier moving in tabs and windows
	map <C-J> <C-W>j<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-L> <C-W>l<C-W>_
	map <C-H> <C-W>h<C-W>_
	
	" Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
	cmap cd. lcd %:p:h
" }
	" visual shifting (does not exit Visual mode)
	vnoremap < <gv
	vnoremap > >gv 

    " Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
    " }
