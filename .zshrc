# shell-prompt
eval "$(starship init zsh)"

# asdf
. "$HOME/.asdf/asdf.sh"

# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh_plugins/zsh-z.plugin.zsh

# alias
alias g=git
alias ll="exa -l --icons"
alias lla="exa -la --icons"
alias lg="exa --icons"
alias lga="exa -a --icons"

