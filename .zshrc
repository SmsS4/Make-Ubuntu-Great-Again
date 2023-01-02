if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
plugins=(
	copybuffer
    ansible
    colored-man-pages
    command-not-found
    common-aliases
    debian
    dircycle
    dirhistory
    docker
    git
    kubectl
    mvn
    pip
    python
    sudo
    tmux
    tmuxinator
    vagrant
    web-search
    history-substring-search
    zsh-syntax-highlighting
)
alias cc='noglob cc'

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-poetry/poetry.plugin.zsh 


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


[[ -s /home/smss/.autojump/etc/profile.d/autojump.sh ]] && source /home/smss/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

source $HOME/.poetry/env


source $HOME/bin/utils.sh
alias "copy=xclip -selection clipboard"
alias "paste=xclip -o -selection clipboard"

export PATH="$HOME/.poetry/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias nodejs='node'
eval $(thefuck --alias)
