Installation Linux:

    git clone http://github.com/darkiri/dotvim.git ~/.vim

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc


Installation Windows:

    git clone http://github.com/darkiri/dotvim.git D:\Data\.vim
    
    cd "C:\Program Files (x86)\Vim"
    del _vimrc
    del vimfiles
    mklink "_vimrc" D:\Data\.vim\.vimrc
    mklink /D vimfiles D:\Data\.vim
