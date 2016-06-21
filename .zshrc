export PYTHONPATH=/usr/lib/pymodules/python2.7 
export PATH=$PATH:$PYTHONPATH
eval "$(scalaenv init -)"

# Path to your oh-my-zsh installation.
export ZSH=/Users/jasonrich/.oh-my-zsh

# Path to mysql shell installation.
export MYSQLPATH=/usr/local/mysql/bin
export PATH=$PATH:$MYSQLPATH


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

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


# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git bundler osx sudo)

bgnotify_threshold=4  ## set your own notification threshold

function notify_formatted {
	## $1=exit_status, $2=command, $3=elapsed_time
	[ $1 -eq 0 ] && title="Holy Smokes Batman!" || title="Holy Graf Zeppelin!"
	bgnotify "$title -- after $3 s" "$2";
}
plugins=(git bgnotify)
source $ZSH/oh-my-zsh.sh  ## existing source call

plugins=(git profile)
plugins=(git)
plugins=(git bundler osx rake ruby)
plugins=(git emacs)
plugins=(git bundler osx vi-mode)
plugins=(git bundler osx vim-interaction)
plugins=(git bundler osx python)
plugins=(git bundler osx pylint)
plugins=(git bundler osx pip)
plugins=(git bundler osx pep8)
plugins=(git bundler osx)
plugins=(git bundler osx docker)
plugins=(git xcode)
plugins=(git docker-compose)
plugins=(git copydir)
plugins=(git copyfile)
plugins=(git brew)
plugins=(git brew-cask)
plugins=(git rsync)
plugins=(git cp)
plugins=(git github)
plugins=(git marked2)
plugins=(git perl)
# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/jasonrich/perl5/perlbrew/bin:/Users/jasonrich/perl5/perlbrew/perls/perl-5.16.0/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

export PYTHONPATH=/usr/lib/pymodules/python2.7
export PATH=$PATH:$PYTHONPATH


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='emacs'
 else
   export EDITOR='memacs'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zr="vim ~/.zshrc"
alias ohmy="vim ~/.oh-my-zsh"
alias h="cd ~/"
alias l="ls -al"
alias v="vim"
alias e="emacs -nw"
alias q="exit"
alias c="clear"
alias x="exec zsh"
