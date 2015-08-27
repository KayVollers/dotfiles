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

alias mmv='noglob zmv -W'

# fasd
alias j=' z'
alias js=' a -e subl'

alias g='git'
alias o='open'
alias s='subl && subl' # fix empty window if sublime was not running before opening file
alias t='tree'
alias v='vim'
alias d='docker'
alias rdf='rdf'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias diskusage='ncdu'
alias rf='rm -rf'
alias tree='tree -N --dirsfirst' # support unicode characters
alias dm='boot2docker' # TODO change to docker-machine if stable

# When using sudo, use alias expansion (otherwise sudo ignores your aliases)
alias sudo='sudo '

# file suffix aliases
alias -s pdf="o"
alias -s md="open -a /Applications/Marked\ 2.app"
alias -s {png,PNG,jpg,jpeg,JPG,JPEG}="o"
alias -s {jar,war}="java -jar"
