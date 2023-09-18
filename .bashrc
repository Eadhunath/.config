eval "$(oh-my-posh init bash --config ~/.config/ev.omp.json)"

eval "$(atuin init bash --disable-up-arrow)"

export PATH="/home/eadhunath/.local/bin:$PATH"
export POETRY_VIRTUALENVS_IN_PROJECT=true

# wsl copy to clipboard
alias clip=clip.exe

export EDITOR='nvim'
alias vim='nvim'
alias vi='nvim'
alias bat='batcat'

# Colors for ls and grep commands
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
