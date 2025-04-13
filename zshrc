export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Antigen

source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

functions[prompt_hg]=""

# Own

if [ -f ~/.shell-local ]; then
    source ~/.shell-local
fi

source ~/.shell-paths
source ~/.shell-aliases
source ~/.shell-functions

export EDITOR='nano'

# Other

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Docker Desktop
if [ -d "${HOME}/.docker/completions" ]; then
    fpath=($HOME/.docker/completions $fpath)
    autoload -Uz compinit
    compinit
fi
