# LANG
#
#
export LANG=ja_JP.UTF-8

# Editor
#
export EDITOR=vim

## set prompt
#
PROMPT='ʕ◕ᴥ◕ʔ [%n@%m] %~ %# '

## Auto-completion
#
autoload -U compinit; compinit

## setup direnv
eval "$(direnv hook $0)"

## do not allow duplicate
#
typeset -U path cdpath fpath manpath

## set sudoers path
#
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

## set additional path
#
export PATH=/usr/local/bin:$PATH
export PATH=/Users/maschang/.rbenv/shims:$PATH
path=(~/bin(N-/) /usr/local/bin(N-/) ${path})

## rbenv init
#
eval "$(rbenv init -)"

## Command history configuration
#
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

## emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes to end of it)
#
bindkey -e

## auto directory pushd that you can get dirs list by cd -[tab]
#
setopt auto_pushd

## command correct edition before each completion attempt
#
setopt correct

## compacked complete list display
#
setopt list_packed

## no beep sound when complete list displayed
#
setopt nolistbeep
setopt no_beep

## add alias
#
alias v='vim '
alias be='bundle exec'
alias br='bundle exec rspec'
alias la='ls -a'
alias ll='ls -alF'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias sudo='sudo '
alias jk='jekyll '

alias r='rails'
alias g='git '
alias t='tig '
alias glp='git log -p'
alias gbl='git blame'
alias gd='git diff'
alias gdl='git whatchanged -p'
alias gcl='git clean -f'
alias gallclear='git clean -dfx'
alias gbr='git branch'
alias gs='git status'
alias gst='git stash'
alias ga='git add -A'
alias gac='git add -A && git commit -m'
alias gci='git commit'
alias gco='git checkout'
alias gnew='git checkout -b'
alias gre='git rebase -i'
alias gp='git pull origin master --prune'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gg='git grep -ne'

alias gos='rlwrap gosh'

alias ct='ctags -R'

# for chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

#
# add zsh-completions path
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
