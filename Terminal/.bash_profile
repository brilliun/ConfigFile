# Shell prompt                                                                 

export PS1="[\u@\h:\W]$ "

# Always enable GREP colors                                                    

export GREP_OPTIONS='--color=auto'

# Aliases                                                                      
alias ll='ls -lh'
alias la='ls -A'
alias lal='ls -Alh'
alias ls='ls -G'
alias xgrep='find . | xargs grep -l'