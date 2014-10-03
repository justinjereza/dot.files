if [[ -o interactive ]]; then
    echo "Evaluating ~/.zprofile"
fi

alias ls='ls -FG'
alias la='ls -a'
alias ll='la -l'
alias l='ls'

alias git-log='git log --color --graph --oneline --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset"'
alias git-fixup='git commit -a --fixup'
alias git-squash='git commit -a --squash'
alias git-rebase='git rebase -i --autosquash'
