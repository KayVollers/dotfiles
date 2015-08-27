#!/usr/bin/env bash

cd ~/.dotfiles/ssh

keybase decrypt mfrommhold_id_rsa.asc -o mfrommhold_id_rsa
keybase decrypt mfrommhold_id_rsa.pub.asc -o mfrommhold_id_rsa.pub
chmod 600 mfrommhold_id_rsa

# eof