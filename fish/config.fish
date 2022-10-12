if status is-interactive &&
    # Commands to run in interactive sessions can go here
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    eval /Users/ghoshk1/anaconda3/bin/conda "shell.fish" "hook" $argv | source
    # <<< conda initialize <<<
end

if type -q exa
  alias ls='exa'
  alias ll='exa -alh -g --icons' 
  alias tree='exa --tree --level=2 --long --git --icons --extended -x'
end

if type -q bat
  alias cat='bat'
end

# 'exa --tree --level=1 --long --git --icons --extended -x --git-ignore'


