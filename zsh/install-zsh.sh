#!/bin/bash
if grep -Fxq /usr/local/bin/zsh /etc/shells ;
then
    chsh -s /usr/local/bin/zsh;     
else 
    echo /usr/local/bin/zsh | sudo tee -a /etc/shells; 
    chsh -s /usr/local/bin/zsh; 
fi
