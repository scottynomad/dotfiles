D=$'\e[37;40m'
BLUE=$'\e[34;40m'
PINK=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'
#D=$'\e[37m'
#BLUE=$'\e[34m'
#PINK=$'\e[35m'
#GREEN=$'\e[32m'
#ORANGE=$'\e[33m'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export PATH=${HOME}/bin:/usr/local/bin:/usr/local/share/python:${PATH}
export WORKON_HOME=/Volumes/SSD/Envs

#. ~/.vim/bundle/powerline/powerline/bindings/bash/powerline.sh

hg_ps1() {
    hg prompt "{${BLUE}{patches|hide_unapplied}}" 2> /dev/null
}
hg_ps2() {
    hg prompt "{${D} on ${PINK}{branch}}{ at ${ORANGE}{bookmark}} {${GREEN}{status|modified}}{update}" 2> /dev/null
}
vcs_ps2() {
    ~/bin/vcprompt --format-git " γ ${PINK}%b${ORANGE}%m%u${D}" --format-hg " ζ ${PINK}%b${ORANGE}%m%u${D}"
}

export PS1='$(hg_ps1)\n${PINK}\u ${D}at ${ORANGE}\h ${D}in ${GREEN}\w$(vcs_ps2) ${D} > '
alias less='less -r'
alias dpaste='lodgeit --pastebin https://dev.idealist.org/paste/ new -l diff'
alias tmux="TERM=screen-256color-bce tmux"

reset-ntp() {
    sudo service ntp stop
    sudo ntpdate ntp.ubuntu.org
    sudo service ntp start
}

#source /usr/local/share/python/virtualenvwrapper.sh

# Try to let ssh-agent reconnect
if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
