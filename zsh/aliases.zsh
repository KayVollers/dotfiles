# ls
# use GNU ls command (brew install coreutils)
alias ls=' gls -Fh --color=auto --group-directories-first'
alias lsa=' ls -a'
alias l=' ls -l'
alias ll=' ls -l'
alias la=' ls -la'
alias cd=' cd'
alias ..=' cd ..'
alias ...=' cd ../..'

# fasd
alias j=' z'
alias js=' a -e subl'

alias g='git'
alias o='open'
alias s='subl && subl' # fix empty window if sublime was not running before opening file
alias v='vim'
alias d='docker'
alias rdf='rdf'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias grep='ack'
alias diskusage='ncdu'
alias rf='rm -rf'

# disable oh-my-zsh defaults
unalias md

# When using sudo, use alias expansion (otherwise sudo ignores your aliases)
alias sudo='sudo '
