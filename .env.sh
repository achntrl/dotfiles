export PATH="/usr/local/sbin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="vim"

# Virtualenv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -d "$HOME/.multirust" ]; then
    export RUST_SRC_PATH="$HOME/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/x86_64-apple-darwin/bin"
fi

if [ -d "$HOME/go" ]; then
    export GOPATH=$HOME/go
    export PATH="$PATH:$GOPATH/bin"
fi

if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
if [ -d "$HOME/.rvm/bin" ]; then
    export PATH="$PATH:$HOME/.rvm/bin"
fi

if [ -d "$HOME/bin" ]; then
    export PATH=$HOME/bin:$PATH
fi

if [ -d "/usr/local/opt/llvm/bin" ]; then
    export PATH="/usr/local/opt/llvm/bin:$PATH"
fi

source <(kubectl completion zsh)
source /Users/alexandre.chaintreuil/bin/kubectl-fzf/kubectl_fzf.sh
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)'$PS1
