alias jn='jupyter notebook --no-browser --port=38531'
alias ..='cd ..'
alias nv='nvidia-smi'
alias nvw='watch -d -n 1 nvidia-smi'

# pull repos in /git if name in git/repos
git_pull_all ()
{
    pushd ~/git;
    parallel -a repos 'echo {} && cd ~/git/{} && git pull';
    popd
}

