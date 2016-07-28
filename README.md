Installation Linux:

    git clone http://github.com/darkiri/dotvim.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    cd .vim
    git submodule init
    git submodule update

Installation Windows:

    git clone http://github.com/darkiri/dotvim.git D:\Data\.vim
    cd D:\Data\.vim
    git submodule init
    git submodule update
    
    cd "C:\Program Files (x86)\Vim"
    del _vimrc
    rmdir /S vimfiles
    mklink "_vimrc" D:\Data\.vim\.vimrc
    mklink /D vimfiles D:\Data\.vim
