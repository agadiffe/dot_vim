export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin

#### MACOS BREW ####
#export PATH=$HOME/.brew/bin:$PATH
#export HOMEBREW_CACHE="$HOME/Library/Caches/Homebrew"

#### PYTHON VIRTUALENVWRAPPER ####
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh
#source $HOME/.brew/bin/virtualenvwrapper.sh

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

# Add git branch if its present to PS1
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

autoload colors
colors

setopt PROMPT_SUBST
export PS1='%B%(!.%{$fg[green]%}.%{$fg[red]%})%m-> %~%{$fg[black]%} $(parse_git_branch)%{$fg[red]%}: %b%{$reset_color%}'

#autoload -Uz vcs_info
#precmd() { vcs_info }
#export PS1='%B%(!.%{$fg[green]%}.%{$fg[red]%})%n-> %~%{$fg[black]%}${vcs_info_msg_0_}%{$fg[red]%}: %b%{$reset_color%}'

#alias "ls= ls --color -F"
alias "ls= ls -FG"
alias "ll=ls -lh"
alias "la=ls -lah"
alias "gccw=gcc -Wextra -Werror -Wall"
alias "g++w=g++ -Wextra -Werror -Wall"

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
