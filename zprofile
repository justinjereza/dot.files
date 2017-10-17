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

[[ -s $HOME/.local/bin/virtualenvwrapper.sh ]] && source $HOME/.local/bin/virtualenvwrapper.sh
