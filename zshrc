PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin

#### MACOS BREW ####
#PATH=$HOME/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
#export HOMEBREW_CACHE="$HOME/Library/Caches/Homebrew"
#export HOMEBREW_CASK_OPTS="--caskroom=~/.brew-cask"

HISTFILE=~/.zshrc_history
SAVEHIST=5000
HISTSIZE=5000

export TERM=xterm-256color
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcec"

setopt inc_append_history
setopt share_history
#setopt menu_complete

if [[ -f ~/.myzshrc ]]; then
  source ~/.myzshrc
fi

USER=`/usr/bin/whoami`
export USER
GROUP=`/usr/bin/id -gn $user`
export GROUP
MAIL="$USER@student.42.fr"
export MAIL

autoload colors; colors
export PS1="%B%{$fg[red]%}%m-> %~: %b%{$reset_color%}"

#alias "ls= ls --color -F"
alias "ls= ls -FG"
alias "ll=ls -l"
alias "la=ls -la"
alias "gccw=gcc -Wextra -Werror -Wall"
alias "g++w=g++ -Wextra -Werror -Wall"

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
