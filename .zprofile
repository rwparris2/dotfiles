### ALIASES

# the fuck
eval $(thefuck --alias)

# idea <-> intellij
alias intellij="idea"

# Color LS
colorflag="--color=auto"
alias ls="gls ${colorflag}"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."

# Docker
alias dps="docker  ps    --format '{{ .Names }}\t{{ .Image }}\t{{ .Ports }}\t{{ .Status}}'"
alias dpsa="docker ps -a --format '{{ .Names }}\t{{ .Image }}\t{{ .Ports }}\t{{ .Status}}'"

# Cwd
alias cwd="pwd"

# Java
function useJdk8 {
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}
function useJdk11 {
  export JAVA_HOME=`/usr/libexec/java_home -v 11`
}
function useJdk15 {
  export JAVA_HOME=`/usr/libexec/java_home -v 15`
}
useJdk15

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Import Work Stuff profile
test -f ~/.zprofile_work && source ~/.zprofile_work
