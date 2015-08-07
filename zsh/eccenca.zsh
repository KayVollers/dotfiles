export ECC_DOCKER="--tlsverify --tlscacert=$HOME/.config/ssl/docker-eccenca/ca.pem --tlscert=$HOME/.config/ssl/docker-eccenca/client-cert.pem --tlskey=$HOME/.config/ssl/docker-eccenca/client-key.pem "
export ECC_DOCKER_PORT="2375"

# docker
alias d-p1="docker $ECC_DOCKER -H=p1.eccenca.com:$ECC_DOCKER_PORT"
alias d-p2="docker $ECC_DOCKER -H=p2.eccenca.com:$ECC_DOCKER_PORT"
alias d-mopsos="docker $ECC_DOCKER -H=mopsos.eccenca.com:$ECC_DOCKER_PORT"
alias d-idas="docker $ECC_DOCKER -H=idas.eccenca.com:$ECC_DOCKER_PORT"
alias d-kepheus="docker $ECC_DOCKER -H=kepheus.eccenca.com:$ECC_DOCKER_PORT"