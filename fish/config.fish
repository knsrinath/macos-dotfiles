set fish_greeting

alias vim nvim
alias vi nvim
alias ls 'eza --icons=auto'
alias la 'eza -a --icons=auto'
alias ll 'eza -al --icons=auto'
alias du 'dust'
alias python 'python3'

export MANPAGER='nvim +Man!'

function starship_transient_prompt_func
  starship module character
end

starship init fish | source
enable_transience

/Users/me/.local/bin/mise activate fish | source
