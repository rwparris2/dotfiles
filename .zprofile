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