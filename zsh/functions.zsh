# additional functions to load
fpath=(/usr/local/share/zsh-completions $fpath)

# add new line before prompt
precmd() { print "" }

# takes an input command name and checks for availability with which
# credits: https://github.com/seebi/rdf.sh/blob/master/rdfw
_checkTool() {

    tool=$1
    if [[ "$tool" == "" ]]
    then
        echo "checkTool error: need an parameter"
        exit 1
    fi

    for tool in $*
    do
        check=`which $tool 2>/dev/null >/dev/null`
        if [[ "$?" == "1" ]]
        then
            echo "Error: you need '$tool' for this command."
            exit 1
        fi
    done
}

# extend rdf tool
# https://github.com/seebi/rdf.sh
function rdf() {

  _checkTool rdf

  if [[ "$1" = "ns" ]] # extend ns parameter to copy namespace to clipboard too
  then
    namespace=$(/usr/local/bin/rdf ns $@)
    echo "$namespace"
    echo "$namespace" | perl -ne 'chomp and print' | pbcopy
  elif [[ "$1" = "desc" ]]
  then
    _checkTool pygmentize
    data=$(any23 rover -t -f turtle $2)
    echo "$data" | pygmentize -l turtle
  else
      /usr/local/bin/rdf $@
  fi
}

# edit markdown files with Sublime Text and view them with Marked 2
function md() {

  open -a Marked\ 2 $*
  subl && open -a Sublime\ Text $*
}

# http://lucapette.me/docker/a-couple-of-useful-aliases-for-docker/
# to add a custom docker command, make an executable named "docker-COMMAND" available in your path
# example: add docker-psa to your path to have the command "docker psa"
docker() {
  if command -v "docker-$1" > /dev/null 2>&1; then
    subcommand=$1
    shift
    docker-$subcommand $@
  else
    /usr/local/bin/docker $@
  fi
}

docker-machine() {
  if command -v "docker-machine-$1" > /dev/null 2>&1; then
    subcommand=$1
    shift
    docker-machine-$subcommand $@
  else
    /usr/local/bin/docker-machine $@
  fi
}

# toggle between solarized variants in iterm
toggle_solarized() {

  echo $ITERM_PROFILE | grep "(light)" -q
  if [ $? -eq 0 ]; then
    ITERM_PROFILE=${ITERM_PROFILE/ \(light\)/}
  else
    ITERM_PROFILE="${ITERM_PROFILE} (light)"
  fi

  export ITERM_PROFILE
  echo -e "\033]50;SetProfile=${ITERM_PROFILE}\a"

}