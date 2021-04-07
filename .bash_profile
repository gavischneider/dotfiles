source ~/.bashrc

### MongoDB ###
export PATH=$PATH:/usr/local/mongodb/bin

### Yarn ###
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


### Python ###
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

### Ruby ###
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

### Google Cloud ###
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gavischneider/google-cloud-sdk/path.bash.inc' ]; then . '/Users/gavischneider/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gavischneider/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/gavischneider/google-cloud-sdk/completion.bash.inc'; fi

