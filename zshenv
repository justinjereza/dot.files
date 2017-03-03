[[ -o interactive ]] && echo "Evaluating ~/.zshenv"

# Make path unique so that paths aren't duplicated
# when zsh env is instantiated multiple times.
typeset -U path

OS="$(echo $OSTYPE | sed 's,^\([a-z]*\).*,\1,')"

# Enclosing "$HOME/foo" in quotes when using the 'I' array subscript flag
# as in ${path[(I)"$HOME/foo"]} prevents variable expansion.

[[ -d "/opt/local/bin" ]] && path=("/opt/local/bin" $path)
[[ -d "/opt/local/sbin" ]] && path=("/opt/local/sbin" $path)
[[ -d "$HOME/.rvm/bin" ]] && path=("$HOME/.rvm/bin" $path)
[[ -d "$HOME/.pyenv/bin" ]] && path=("$HOME/.pyenv/bin" $path) && eval "$(pyenv init -)"
[[ -d "$HOME/.local/bin" ]] && path=("$HOME/.local/bin" $path)

PROJECT_HOME="$HOME/Projects"
[[ -s "$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh" ]] && \
	source "$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh"
