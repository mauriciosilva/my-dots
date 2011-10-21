export PATH=/Users/mauriciosilva/Projects/phabricator/sources/arcanist/bin/arc:/usr/local/mysql/bin/:$PATH

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

source ~/.git_completion.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\h:\W$(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")$ '

source $HOME/.bash_aliases

#source /Users/mauriciosilva/Projects/phabricator/sources/arcanist/resources/shell/bash-completion


export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
