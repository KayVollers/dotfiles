# Path expansion
export PATH=$HOME/.bin:$PATH # add user binaries to path
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# export docker host address
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/marvin/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Java home
export JAVA_HOME="$(/usr/libexec/java_home)"

# unixorn/autoupdate-zgen - auto update every 14 days
export ZGEN_PLUGIN_UPDATE_DAYS=14
export ZGEN_SYSTEM_UPDATE_DAYS=14
