if [[ -o interactive ]]; then
    echo "Evaluating ~/.zshenv"
fi

path=(/opt/local/bin /opt/local/sbin $HOME/.rvm/bin $path)
