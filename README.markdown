Installation

    git clone git://github.com/kunalghosh/dotfiles.git

Create the VIM directory
    
    mkdir ~/dotfiles/vim 

Create symlinks:

    ln -s ~/dotfiles/zshrc ~/.zshrc
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

I put Vim's backup and swap files in ~/tmp, so that directory must exist. 
To be sure, run:

    mkdir ~/tmp

Plugins are installed using [Vundle][vurl]. 
So you need to set that up before using any plugins. To set it up:

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Launch `vim` and run `:PluginInstall`

Finally install [oh-my-zsh][omzsh] ( ZSH [features][zshfeat]) 
    
    git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
     
# VIM #

My preferences for Vim are stored in `dotfiles/vimrc` and `dotfiles/gvimrc`
respectively. All plugins and scripts are stored in the `dotfiles/vim`
directory.


## Adding Plugin Bundles ##

Look at [Vundle Readme][vrm]

[vurl]: https://github.com/gmarik/Vundle.vim
[vrm]: https://github.com/gmarik/Vundle.vim/blob/master/README.md
[omzsh]: https://github.com/robbyrussell/oh-my-zsh
[zshfet]: http://www.slideshare.net/jaguardesignstudio/why-zsh-is-cooler-than-your-shell-16194692
