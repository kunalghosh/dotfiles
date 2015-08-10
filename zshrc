# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PATH=/Users/kunal/anaconda/bin:/opt/local/bin:/Users/kghosh/bin:/usr/local/texlive/2014basic/bin/x86_64-darwin/:$PATH
export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH
export ANACONDA_HOME=$HOME/anaconda
export PYTHONPATH=$HOME/Workspace/caffe/python:$PYTHONPATH
export DYLD_FALLBACK_LIBRARY_PATH=$ANACONDA_HOME/lib:/usr/local/lib:/usr/lib
. /Users/kunal/torch/install/bin/torch-activate #torch env variables

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"
ZSH_THEME="robbyrussell"

alias ctags="/usr/local/bin/ctags"
alias bb="brazil-build"
alias bbc="brazil-build clean"
alias youtube-get-mp3="youtube-dl -t -x --audio-format mp3 "
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
skip_global_compinit=1
autoload -Uz compinit
compinit -d /tmp/dumpfile
# -----------------------
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' completer _expand _complete _approximate
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
setopt COMPLETE_IN_WORD
# -----------------------
setopt extendedglob
setopt inc_append_history
setopt share_history

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME
# export JAVA_HOME=/usr
