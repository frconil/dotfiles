# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
alias history='history 1 | less'
setopt SHARE_HISTORY
setopt APPEND_HISTORY
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bato/.zshrc'
export PAGER="/usr/bin/most"
export PROMPT="%n@%m:%d> "
export CVSROOT=:pserver:<user>@<cvs server>:/projects/cvs 
alias py='python'
alias ls='ls -lisah --color' 
alias gitlist='ssh git@infra-svn info'
alias syntax() { erb -P -x -T '-' "$*" | ruby -c; }
autoload -Uz compinit
compinit
# End of lines added by compinstall
#bindkey "^[[A" up-line-or-history
##bindkey "^[[B" down-line-or-history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
