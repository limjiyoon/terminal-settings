# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="kennethreitz"
#ZSH_THEME="refined"
# autoload -U promptinit; promptinit
# prompt purer

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugin {{{
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    autojump
    tmuxinator
)

# }}}
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
source $ZSH/oh-my-zsh.sh
# User configuration {{{

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# }}}
# alias {{{
alias vi='nvim'
alias vim='nvim'
alias py='python'
alias bash='chsh -s /bin/bash'
alias zshconfig='vim ~/.zshrc'
alias adaptzsh='source ~/.zshrc'
alias ohmyzsh='vim ~/.ohmyzsh'
alias vimconfig='vi ~/.vimrc'
alias coding='cd ~/Desktop/Jiyoon/coding/'
alias til='/Users/jiyun/Desktop/Jiyoon/TIL'
alias gcc='gcc -W -Wall -O2'
alias boostoff='nohup sudo /Applications/Turbo\ Boost\ Switcher.app/Contents/McOS/Turbo\ Switcher &'
alias ssh='ssh -c aes128-ctr'
alias notebook='jupyter notebook'
alias mux='tmuxinator'
# }}}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change. {{{
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)" alias ohmyzsh="mate ~/.oh-my-zsh"
# }}}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
