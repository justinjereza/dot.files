HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/justinjereza/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ -o interactive ]]; then
    echo "Evaluating ~/.zshrc"
fi

setopt appendhistory nomatch
autoload -Uz promptinit && promptinit && prompt suse
