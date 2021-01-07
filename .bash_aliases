alias jn='jupyter notebook --no-browser --port=38531'
alias ..='cd ..'
alias nv='nvidia-smi'
alias nvw='watch -d -n 1 nvidia-smi'

# Git
alias gs='git status'
alias gl='git log'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout'

# pull repos in /git if name in git/repos
git_pull_all ()
{
    pushd ~/git;
    parallel -a repos 'echo {} && cd ~/git/{} && git pull';
    popd
}

