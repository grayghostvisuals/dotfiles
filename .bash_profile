# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

#this line causes terminal to report no such file or directory
# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

#Git Brew Installation
export PATH=/usr/local/bin:$PATH

# http://hocuspokus.net/2008/01/a-better-ls-for-mac-os-x/
# # MacPorts
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# export MANPATH=/opt/local/share/man:$MANPATH

# Terminal colours (after installing GNU coreutils)
# NM="\[\033[0;38m\]" #means no background and white lines
# HI="\[\033[0;37m\]" #change this for letter colors
# HII="\[\033[0;31m\]" #change this for letter colors
# SI="\[\033[0;33m\]" #this is for the current directory
# IN="\[\033[0m\]"

# export PS1="$NM[ $HI\u $HII\h $SI\w$NM ] $IN"

# if [ "$TERM" != "dumb" ]; then
#     export LS_OPTIONS='--color=auto'
#     eval `dircolors ~/.dir_colors`
# fi
# http://hocuspokus.net/2008/01/a-better-ls-for-mac-os-x/