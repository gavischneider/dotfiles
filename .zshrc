# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty. This makes repository
# status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(zsh-autosuggestions zsh-syntax-highlighting extract forklift git macos)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

alias brewup='brew update && brew upgrade'  # Update & Upgrade Homebrew
alias myip='curl ifconfig.me'               # Get public IP address
alias ls='eza --icons=always --git'         # Replace ls with eza
alias ppath='printf "%s\n" ${(s/:/)PATH}'   # Print PATH entities on separate lines
alias pfpath='printf "%s\n" ${(s/ /)fpath}' # Print fpath entities on separate lines
alias rm='trash'                            # Map rm to trash
alias gho='nvim ~/.config/ghostty/config'   # Edit Ghostty config
alias ghov='ghostty +version'               # View Ghostty version
alias ghothemes='ghostty +list-themes'      # View Ghostty themes
alias ghofonts='ghostty +list-fonts'        # View Ghostty fonts
alias ghokeys='ghostty +list-keybinds'      # View Ghostty keymaps
alias npmout='npm outdated -g --depth=0'    # See which global packages are outdated
alias npmup='npm update -g'                 # Update global packages
alias zshrc='nvim ~/.zshrc'                 # Edit Zsh config
alias colormap='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done' # Print colormap
alias python='/opt/homebrew/bin/python3'    # Use Homebrew Python3

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# eza
export EZA_CONFIG_DIR=$HOME/.config/eza

# bat
export BAT_THEME=base16

# Ensures that all entries in PATH are unique
typeset -U PATH

# Source functions file
[[ -f "$HOME/.zsh/zfunctions.zsh" ]] && source "$HOME/.zsh/zfunctions.zsh"

remove_path_junk
