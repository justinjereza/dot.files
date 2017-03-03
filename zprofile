[[ -o interactive ]] && echo "Evaluating ~/.zprofile"

case "$OS" in
	"linux")
		alias ls='ls --color=auto'
		alias la='ls -A'
		alias l='ls -CF'
		;;
	"darwin")
		alias ls='ls -FG'
		alias la='ls -a'
		alias l='ls'
		;;
esac

alias ll='la -l'

alias git-log='git log --color --graph --oneline --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset"'
alias git-fixup='git commit -a --fixup'
alias git-squash='git commit -a --squash'
alias git-rebase='git rebase -i --autosquash'

[[ -s $HOME/.local/bin/virtualenvwrapper.sh ]] && source $HOME/.local/bin/virtualenvwrapper.sh
