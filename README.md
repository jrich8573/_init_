## Configurations


### Purpose:
  1. Configurations I find useful
  1. Feel free to clone, folk, and submit a pull request. 
  1. Thanks!

### Shell:
  1. macOS
      1. iTerm2 (with oh-my-zsh)
  1. Windows (If I must) 
      1. On Windows I use Babun Unix shell emulator (with oh-my-zsh)
      1. Some of my fellow engineers are using [cmder](https://github.com/cmderdev/cmder), while others are using [Hyper](https://hyper.is). I haven't tested on eiter shell/terminal emulator, and if you have, I would certainly appreciate a pull request 
  1. Most if not all Linux distributions (tested on CentOs 7, RHEL 7, Ubuntu 16, and Kali)
      1. I use the terminal packaged with each distribution (with oh-my-zsh)

### Applications and package managers (macOS only): 
  1. Homebrew package manager (MacPorts could be used, I just prefer HB)
  1. vim (the plugins are listed in the .vimrc file)
  1. R and R-Studio
  1. Anaconda python distribution 3.x
  1. Text editor of choice is (atom)[atom.io].      
  __Coming soon:__ my atom configurations 
  1. tmux, although iTerm2 allows tabs, I have used tmux for sometime and I just easier for me
  1. emacs (I use org mode in emacs for tracking TODO's and notes, and I do have the evil package loaded in emacs to emulate vim key bindings). 
  1. My shell of chioce is [oh-my-zsh](http://ohmyz.sh/)
      1. git configured, and thus I rarely utilize GitHub desktop. Thus, configuring git is essential.        
      __NOTE:__  I have tested this git config on public GitHub and GitHub Enterprise only. I have not tested on GitLab, BitBucker, sourceforge, or any other git based version control application
  1. Eclipse (for writing Hadoop Mappers and Reducers in Java) 

### Usage:
If you are planning on using any part my configuration (in pieces or in whole), you will need to source you `.rc` file for the changes to take effect. Here are some examples of sourcing those mentioned `.rc` files:        
`source .zshrc`       
`source .bashrc`        
`source .$MY_COOL_SHELLrc`

### Contributing:
Per best practices, to contribute to this repo, begin by forking the repo to your profile, or organization. After the forl is complete, clone it to your local machine and checkout a new `feature` branch, following the guidelines below. 
```
mkdir feature 
cd feature
git clone https://github.com/<profile or org name here>/_inti_.git
git checkout -b $MY_HOT_NEW_FEATURE
```
All of my repos have a staging branch that I use for accepting or rejecting pull request. After completing your change, comitt and push to your forked copy of the repo, then open a pull request and point it to the staging branch of my repo. There, I will review your proposed changes, and if approved, I will complete the merge into the master repo.  
