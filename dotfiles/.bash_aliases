# author: kevinkirst
# ~/.bash_aliases sourced by ~/.bashrc for non-login shells

# =-=-=-=-=-=-=-=-=-=-= #
# ORIGINAL MINT ALIASES #
# =-=-=-=-=-=-=-=-=-=-= #
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto -h'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# =-=-=-=-=-=-=-=-=-=-= #
#   CUSTOM COLLECTION   #
# =-=-=-=-=-=-=-=-=-=-= #
# reload ~/.bashrc
alias bashrc='source ~/.bashrc'
# update system
alias up='sudo apt-get update'
alias upup='sudo apt-get update && sudo apt-get upgrade -y'
# sudo aliases
	# if the last character of the alias value is a blank, then the next command word following the alias is also checked for alias expansion
	# this alias makes 'sudo' work with other aliases
alias sudo='sudo '
	# runs last executed command as root
alias fuck='sudo !!'
# cd aliases
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias cd..='cd ..'
alias cd~='cd ~'
# ls aliases
alias lh='ls -lh'
# terminal QoL
alias cls='clear'
alias shush='shutdown -P 0'
alias cx='chmod +x'
# human readable commands
alias df='df -h'
# MOOO
alias moo='cowsay MOOOO'

# FUNCTIONS
# clear prompt, cd to $1 and lists contents of $1
function goto() {
	clear; cd $1; pwd; ls -lh;
}
# extract a file
function extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)  tar xjf $1    ;;
			*.tar.gz) tar xzf $1    ;;
			*.bz2)    bunzip2 $1    ;;
			*.rar)    rar x $1    ;;
			*.gz)   gunzip $1   ;;
			*.tar)    tar xf $1   ;;
			*.tbz2)   tar xjf $1    ;;
			*.tgz)    tar xzf $1    ;;
			*.zip)    unzip $1    ;;
			*.Z)    uncompress $1 ;;
			*)      echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
