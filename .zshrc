# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi




# path to Python 3.X
# export PYTHONPATH3='/Users/${USER}/anaconda'
# export $PYTHONPATH3/bin:$PATH

# path to Python 2.X
# export PYTHONPATH2='/Users/${USER}/anaconda2'
#export PATH="$PYTHONPATH2/bin:$PATH"

# eval "$(scalaenv init -)"

# path to cleanup command
# export cleanup="/Users/${USER}/shell/bash/cleanUp"
# export PATH=$PATH:$CLEANUP

# path the connection file
# export con="/User/${USER}/shell/bash/con"
# export PATH=$PATH:$CON

# Path to your oh-my-zsh installation.
export ZSH=/Users/${USER}/.oh-my-zsh

# Path to mysql shell installation.
# export MYSQLPATH=/usr/local/mysql/bin
# export PATH=$PATH:$MYSQLPATH

# Groovy Home
# export GROOVY_HOME=/usr/local/opt/groovy/libexec
# export PATH=$PATH:$GROOVY_HOME


#GOROOT Environment Variable
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin

# GOPATH Environment Variable
# export GOPATH=/Users/${USER}/go
# export PATH=$PATH:$GOPATH/bin
# export GOPATH=$GOPATH:/Users/${USER}/code/go


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="oh-my-via/via"


# C++ Boost root
#BOOST_ROOT=/usr/local/boost_1_79_0
#export PATH="$BOOST_ROOT/boost:$PATH"

 #Uncomment the following line to use case-sensitive completion.
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
plugins=(git profile)
plugins=(git)
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
fpath=(/usr/local/share/zsh-completions $fpath)

# default shell
source $ZSH/oh-my-zsh.sh

# shell runtime environment
source ~/.shellrc

# path environment
# source ~/.bash_profile


# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
#export ARCHFLAGS="-arch x86_64"
# ssh
#export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias zr="vim ~/.zshrc"
#alias ohmy="vim ~/.oh-my-zsh"
#alias h="cd ~/"
#alias l="ls -al"
#alias v="vim"
#alias e="emacs -nw"
#alias q="exit"
#alias c="clear"
#alias x="exec zsh"
#export PATH="$PYTHONPATH2/bin:$PATH"
#export PATH="$PYTHONPATH3/bin:$PATH"
#export PATH="/usr/bin:$PATH"
#export PATH="/usr/local/sbin:$PATH"
#export PATH="/usr/local/opt/tomcat@8.0/bin:$PATH"
export PATH="$PYTHONPATH3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/Users/${USER}/.sdkman"
#[[ -s "/Users/${USER}/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/${USER}/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
# export PATH="/usr/local/opt/openssl/bin:$PATH"
# export PATH="/usr/local/opt/sqlite/bin:$PATH"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/openssl/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/${USER}/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/${USER}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/${USER}/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/${USER}/google-cloud-sdk/completion.zsh.inc'; fi
#Add Visual Studio Code (code) 
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source ~/.iterm2_shell_integration.zsh
# export PATH="/usr/local/Cellar/python@3.7/3.7.10_3/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
# export PATH "/usr/bin/gcc:$PATH"
# export PATH="/opt/homebrew/Cellar/openjdk@11/11.0.10/bin:$PATH"
# export PATH="/opt/homebrew/opt/gradle@6/bin:$PATH"
# export PATH="/opt/homebrew/opt/node@12/bin:$PATH"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
export PYTHON37="/usr/local/opt/python@3.7/bin"
export PYTHON38="/usr/local/Cellar/python@3.8/3.8.12_1/bin"
export PATH=$PYTHON38:$PATH
export PYTHON39=/usr/local/Cellar/python@3.9/3.9.7_1/bin
export PATH="/usr/local/opt/node@14/bin:$PATH"
#export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:$PATH"

# Java 8 Home 
export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home
# Artifactory environment 
#export ARTIFACTORY_USER=${USER}
#export ARTIFACTORY_TOKEN=AKCp8k8EBC3784YpnzieR3gLiw2YncHN2dvjxuupENrWSfMYhrPWnWEPWZLbmzea6KzKUV7XD

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/${USER}/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/${USER}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/${USER}/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/${USER}/google-cloud-sdk/completion.zsh.inc'; fi

# OCTAVIA CLI 0.39.1-alpha
#OCTAVIA_ENV_FILE=/Users/${USER}/.octavia
#export OCTAVIA_ENABLE_TELEMETRY=False
#alias octavia="docker run -i --rm -v \$(pwd):/home/octavia-project --network host --env-file \${OCTAVIA_ENV_FILE} --user \$(id -u):\$(id -g) airbyte/octavia-cli:0.39.2-alpha"
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

source /Users/jasonrich/.docker/init-zsh.sh || true # Added by Docker Desktop
