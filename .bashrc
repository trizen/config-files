#
# ~/.bashrc
#

source /etc/profile

#cal
#alsi
#echo

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

export USE_CCACHE=1
export KCFLAGS="-march=native -Ofast"

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
alias youtube-viewer="perl -X /usr/bin/youtube-viewer"

#shopt -s cdspell
#shopt -s dotglob
#shopt -s nocaseglob
#shopt -s extglob
#shopt -q -s checkwinsize
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
export CC="colorgcc"

export PATH="/opt/android-sdk/platform-tools:/usr/lib/colorgcc/bin:$PATH:$HOME/GO/bin"    # As per usual colorgcc installation, leave unchanged (don't add ccache)
export CCACHE_PATH="/usr/bin"                 # Tell ccache to only use compilers here
export CCACHE_DIR=/media/ccache             # Tell ccache to use this path to store its cache
alias ls='ls --color=auto'
alias perltidy='perltidy -l=120 -f -kbl=1 -bbb -bbc -bbs -b -ple -bt=2 -pt=2 -sbt=2 -bvt=0 -sbvt=1 -cti=1 -bar -lp -anl'
alias rime="cat /media/Others/Cuvinte\\ -\\ rime/rime-all.txt | grep $@"
alias percritic='perlcritic --statistics'
alias mkpm='h2xs -A -a -b 5.10.1 -X --skip-exporter --skip-warnings --skip-ppport --skip-autoloader -n $@'

PS1='\[\e[0;37m\]\u\[\e[m\][\W]\[\e[m\]\[\e[0;37m\]% \[\e[m\]'

#source ~/perl5/perlbrew/etc/bashrc
#source ~/perl5/perlbrew/etc/bashrc
alias perl='perl -W'
export DBI_DRIVER='mysql'
alias mkmodule='module-starter -mb --email=trizenx@gmail.com --author=Trizen $@'
complete -cf kdesu time man killall info which su

export LESS_TERMCAP_mb=$'\E[01;33m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;33m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[01;42;33m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[0m' # begin underline
