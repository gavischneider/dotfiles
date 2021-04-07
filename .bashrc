# Set prompt
function set_prompt {
	local prompt_char=$([[ $(whoami) == "root" ]] && echo '#' || echo '$')

	#local git_branch=$([[ $(git branch 2> /dev/null) ]] | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
    
	local bold="$(tput bold)"

	local orange="\001$(tput setaf 166)\002"
	local turquoise="\001$(tput setaf 30)\002"
	local purple="\001$(tput setaf 91)\002"
	local pink="\001$(tput setaf 200)\002"
	local green="\001$(tput setaf 34)\002"
	local white="\001$(tput setaf 255)\002"
	local reset="\001$(tput sgr0)\002"

	local git="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')"
	export PS1="${bold}${turquoise}\u${white}@${purple}\h${white}:${pink}\w${green}$($(git branch) 2> /dev/null)${reset} "
}

function git_branch() {
	local hh="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')"
	echo "${hh}"
}

set_prompt

#echo $(git branch)

#a=$(set_prompt)
#b=$(git_branch)

#export PS1="${a}${b}"

#export PS1="${bold}${turquoise}\u${white}@${purple}\h${white}:${pink}\w$(git_branch)${reset}${prompt_char} "

### Aliases ###
alias myip="echo $(ifconfig | grep broadcast | awk '{print $2}')"
alias pro="open /Users/gavischneider/Desktop/Programming/"
alias ls="lsd -a"
alias v="vim"
alias vv="cd; vim .vimrc"
alias vb="cd; vim .bashrc"
alias vbp="cd; vim .bash_profile"



### Ruby ###
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


