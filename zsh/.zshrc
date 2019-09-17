# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export KEYTIMEOUT=1
export ZSH=/home/fernando/.oh-my-zsh
export GOPATH=/home/fernando/Code/go
export GOBIN=$GOPATH/bin
export PYTHONPATH=$PYTHONPATH:/home/fernando/Code/Kratos
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/fernando/Code/Kratos/libs
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin
source "$HOME/.cache/wal/colors.sh"


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="deviantfero"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh

# User configuration
bindkey -r '^[x' 

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='emacsclient -t --create-frame'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

dusort() { du -hd1 | sort --human-numeric-sort }
ts() { tmux new -s "$1" || tmux attach -t "$1" }
org() { emacsclient -t --create-frame "$HOME/org/$1" }


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias git-etags="git ls-files | ctags -e -L -"
alias ag-etags="ag -l | ctags -e -L -"
alias sys="systemctl"
alias lightsoff="xbacklight -set 0"
alias docker-start="systemctl start docker"
alias docker-stop="systemctl stop docker"
alias tpacpi-start="systemctl start tpacpi-bat.service"
alias tpacpi-stop="systemctl stop tpacpi-bat.service"
alias nmode="xgamma -ggamma 0.9 -bgamma 0.8 -rgamma 1.2"
alias dmode="xgamma -gamma 1"
alias vf='vim $(fzf)' 
alias v='vim'
alias e='emacs -nw'
alias ec='emacsclient -t --create-frame'
alias ecg='emacsclient --create-frame'
alias es='emacs --daemon'
alias ecf='emacsclient -t --create-frame $(fzf)'
alias ytmp3='youtube-dl -x --audio-format mp3'
alias mpva='mpv --no-video --ytdl-format=bestaudio'
alias vchrome='google-chrome-stable --use-fake-device-for-media-stream --use-file-for-fake-video-capture=$HOME/Videos/others/out.y4m'
alias ncm='mpd && ncmpcpp'
