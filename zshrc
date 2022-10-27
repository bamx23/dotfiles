export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Antigen

source $HOME/antigen.zsh
antigen init $HOME/.antigenrc

functions[prompt_hg]=""

# Own

source ~/.shell-aliases
source ~/.shell-paths
source ~/.shell-functions

export EDITOR='nano'

# Other

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
