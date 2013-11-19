Installation Linux:

    git clone http://github.com/darkiri/dotvim.git ~/.vim

    ln -s ~/.vim/.vimrc ~/.vimrc

Installation Windows:

    git clone http://github.com/darkiri/dotvim.git D:\Data\.vim
    
    cd "C:\Program Files (x86)\Vim"
    del _vimrc
    rmdir /S vimfiles
    mklink "_vimrc" D:\Data\.vim\.vimrc
    mklink /D vimfiles D:\Data\.vim
