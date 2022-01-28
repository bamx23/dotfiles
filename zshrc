export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Antigen

source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

# Own

source ~/.shell-aliases
source ~/.shell-paths
source ~/.shell-functions

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Other

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
