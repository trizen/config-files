# Lines configured by zsh-newuser-install
export HISTFILE=~/.histfile
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
#export LC_ALL=C

setopt hist_ignore_all_dups
setopt autocd
#setopt correctall


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

emulate sh -c 'source /etc/profile'

if [[ $(whoami) != "root" ]]; then
    cal
    echo
fi


#-----------------------------
# Dircolors
#-----------------------------
export LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';

#------------------------------
# Keybindings
#------------------------------
bindkey -v
typeset -g -A key
#bindkey '\e[3~' delete-char
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
#bindkey '\e[2~' overwrite-mode
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for gnome-terminal
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line


#------------------------------
# Comp stuff
#------------------------------
zmodload zsh/complist
autoload -Uz compinit
compinit
zstyle :compinstall filename '${HOME}/.zshrc'

zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always


#------------------------------
# Export stuff
#------------------------------
export USE_CCACHE=1
export EDITOR='joe'
export BROWSER='google-chrome'
export WEBBROWSER='google-chrome'
export GOROOT=/usr/lib/go
export GOOS=linux
export FILEMANAGER='pcmanfm'
export GOPATH="$HOME/GO"
export GOBIN="$HOME/GO/bin"
#export GOPKGS="$HOME/GO/pkg"
export QTDIR=/usr/include/QtCore
#export CC="colorgcc"
#export PATH="/opt/android-sdk/platform-tools:$HOME/.gem/ruby/2.0.0/bin:$PATH"
export CCACHE_PATH="/usr/bin"                 # Tell ccache to only use compilers here
#export CCACHE_DIR=/media/ccache               # Tell ccache to use this path to store its cache
export DBI_DRIVER='mysql'
export PS1="%B%n%b[%~]: "
export PZN='/media/data/Perl/Personal projects'
export SIDEF='/media/data/Perl/Sidef/bin'
export WER='/media/data/Perl/Github/perl-scripts'

#------------------------------
# Alias stuff
#------------------------------
#alias perl='perl -W'
alias d2h="perl -e 'printf qq|%X\n|, int( shift )'"
alias d2o="perl -e 'printf qq|%o\n|, int( shift )'"
alias d2b="perl -e 'printf qq|%b\n|, int( shift )'"
alias c2b="perl -E 'say unpack \"B*\", shift'"
alias h2d="perl -e 'printf qq|%d\n|, hex( shift )'"
alias h2o="perl -e 'printf qq|%o\n|, hex( shift )'"
alias h2b="perl -e 'printf qq|%b\n|, hex( shift )'"
alias o2h="perl -e 'printf qq|%X\n|, oct( shift )'"
alias o2d="perl -e 'printf qq|%d\n|, oct( shift )'"
alias o2b="perl -e 'printf qq|%b\n|, oct( shift )'"
alias gopkg="locate /usr/lib/go/src/pkg/ | perl -nE 'm{\.go\$}||next;m{/pkg/(.*)/[^/]+$}&&\$\${\$1}++?next:defined(\$1)?say\$1:next'"
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias ls='ls --color=auto --human-readable --group-directories-first --classify'
alias perltidy='perltidy -l=127 -f -kbl=1 -bbb -bbc -bbs -b -ple -bt=2 -pt=2 -sbt=2 -bvt=0 -sbvt=1 -cti=1 -bar -lp -anl'
alias rime="cat /media/Others/Cuvinte\\ -\\ rime/rime-all.txt | grep $@"
alias percritic='perlcritic --statistics'
alias mkpm='h2xs -A -a -b 5.10.1 -X --skip-exporter --skip-warnings --skip-ppport --skip-autoloader -n $@'
alias mkmodule='module-starter -mb --email=trizenx@gmail.com --author=Trizen $@'
#alias youtube-viewer="perl -X /usr/bin/youtube-viewer"
alias music="youtube-viewer -A -n -m -s --min-seconds=60 --max-seconds=480 $@"
alias rmusic="youtube-viewer -A -n -s --min-seconds=60 --max-seconds=480 -rv $@"
alias yv="youtube-viewer"
alias cp='cp -v'
#alias rcp='rsync -v --progress'
#alias rmv='rsync -v --progress --remove-source-files'
alias mv='mv -v'
alias rm='rm -v'
alias rmdir='rmdir -v'
alias ln='ln -v'
alias chmod="chmod -c"
alias chown="chown -c"
alias less="less -g -r"
alias inxi="inxi -F -x -f -o -p"
alias url2pdf="wkhtmltopdf --use-xserver $@"
alias locatepm="locatepm -b"
alias japh="perl '$PZN/alien_japh3.pl'"
alias install-perl="perlbrew install -Doptimize='-march=native -Ofast' -j 2 --noman --notest --thread --multi $@"
#alias dkms_nvidia="dkms install -m nvidia -v $(perl -E'say`pacman -Qi nvidia-dkms`=~/^Version\h*:\h*([^-]+)/m') -k $@"
alias plint="perl -MO=Lint,all $@"
#alias gcc="gcc -march=native"

# Support colors in less
export LESS_TERMCAP_mb=$'\E[01;33m'
export LESS_TERMCAP_md=$'\E[01;33m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;42;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export TEMP=/tmp


# report about cpu-/system-/user-time of command if running longer than
# 5 seconds
REPORTTIME=5

# watch for everyone but me and root
watch=(notme root)

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

#------------------------------
# Subroutines
#------------------------------

screencast() {
    ffmpeg -hwaccel vdpau -f alsa -ac 2 -i hw:0,0 -f x11grab -r 15 -s 1920x1080 -i :0.0 -acodec libmp3lame -vcodec libx264 -preset ultrafast -crf 10 -threads 0 -y $@
}

randmusic() {
    local str
    str=$(grep --line-number . youtube-viewer.txt | grep "^$(wc -l ~/youtube-viewer.txt | perl -anE 'say 1+int rand $F[0]'):" | perl -nE '/^\d+:(.*\S)/ && say $1=~s/\h*#.*//rs') &&
    echo $str &&
    eval "$str"
}

fzf_cd() {
  zle -I;
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}; zle -N fzf_cd; bindkey '^E' fzf_cd;

preexec() {
    printf '\e]0;%s\a' "$2"
}

over_ssh() {
    if [ -n "${SSH_CLIENT}" ]; then
        return 0
    else
        return 1
    fi
}

confirm() {
    local answer
    echo -ne "zsh: sure you want to run '${YELLOW}$@${NC}' [yN]? "
    read -q answer
        echo
    if [[ "${answer}" =~ ^[Yy]$ ]]; then
        command "${=1}" "${=@:2}"
    else
        return 1
    fi
}

confirm_wrapper() {
    if [ "$1" = '--root' ]; then
        local as_root='true'
        shift
    fi

    local runcommand="$1"; shift

#    if [ "${USER}" != 'root' ]; then
#        echo "You cannot execute command: $runcommand"
#        return 1;
#    fi
    confirm "${runcommand}" "$@"
}

poweroff() { confirm_wrapper --root $0 "$@"; }
reboot() { confirm_wrapper --root $0 "$@"; }
hibernate() { confirm_wrapper --root $0 "$@"; }
