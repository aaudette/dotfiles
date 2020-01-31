##### Copy the following lines into .bash_profile to have these settings loaded
# if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
# fi

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install --path vendor"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=$HOME/.npm-packages/lib/node_modules/.bin:$PATH
export PATH=node_modules/.bin:$PATH
export PATH=~/code/devtools:$PATH

# Terminal prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# `\[\33[XXm\]` represents the beginning of the color code, and `[\033[00m\]` is the end of the color
# code. Replace XX to change the color.
export PS1="\[\033[33m\]\u@\h\[\033[00m\] \[\033[36m\](\w)\[\033[00m\] \[\033[34m\]\$(parse_git_branch)\[\033[00m\] $ "

