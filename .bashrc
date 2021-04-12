# Colors 
bold="$(tput bold)"
orange="\001$(tput setaf 166)\002"
turquoise="\001$(tput setaf 30)\002"
purple="\001$(tput setaf 91)\002"
pink="\001$(tput setaf 200)\002"
green="\001$(tput setaf 34)\002"
dark_red="\001$(tput setaf 88)\002"
white="\001$(tput setaf 255)\002"
reset="\001$(tput sgr0)\002"

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

prompt_char() {	
  [[ $(whoami) == "root" ]] && echo '#' || echo '$'
}

# Set Bat's config directory
export BAT_CONFIG="~/"
export BAT_THEME="Dracula"

# Set prompt
export PS1="${bold}${turquoise}\u${white}@${purple}\h${white}:${pink}\w${white}-${green}\$(git_branch)${dark_red}\$(prompt_char)${reset} "

### Aliases ###
alias myip="echo $(ifconfig | grep broadcast | awk '{print $2}')"
alias pr="cd; cd ~/Desktop/Programming/"
alias pro="open /Users/gavischneider/Desktop/Programming/"
alias brewup="brew update && brew upgrade"
alias ls="lsd -a"
alias cat="bat --paging=never"
alias v="vim"
alias vv="cd; vim .vimrc"
alias vb="cd; vim .bashrc"
alias vbp="cd; vim .bash_profile"
alias ud="cd; cd ~/scripts; bash updateDotfiles.sh"



### Ruby ###
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


