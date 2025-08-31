# Zsh functions

# Remove dead Cryptex paths from PATH
remove_path_junk() {
    local -a path_array
    path_array=("${(s/:/)PATH}")                                            # Split PATH on colon
    path_array=("${(@)path_array:#/var/run/com.apple.security.cryptexd/*}") # Remove Cryptex entries
    PATH="${(j/:/)path_array}"                                              # Join back to colon string
}
