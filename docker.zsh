alias dive='f() { docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest $1 };f'
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

