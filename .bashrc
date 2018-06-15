####
# On terminal load
###

# Open the terminal to Minx
cd ~/stitchfix/minx

# Initialize rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Set the colors
# (1) define the name of the branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# (2) set the information and coloring of the prompt
export PS1="\[\033[33m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] :> "
