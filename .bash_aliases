# Run previous command as sudo
# alternatively can be swear word of your choice
alias plz='sudo $(history -p !!)'

# Quick access to config files
alias vimalias='vim ~/.bash_aliases'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'

# Re-source .bashrc and aliases
alias re-source='source ~/.bashrc; source ~/.bash_aliases;'

# Evaluates mathematical expression (From CSE15L Lab 7)
function calc {
	  echo "${1}" | bc -l;
}

# Ronak was here
alias cl='clear'

# Try it ;) must have curl installed
alias weather='curl wttr.in'

# Invoke make with multiple parallel jobs to compile with the speed of the gods
alias make='make -j6'
