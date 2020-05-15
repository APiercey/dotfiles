# GIT ALIASES AND FUNCTIONS

# If Git does not exist, don't continue
if ! command -v git > /dev/null 2>&1; then
  return 0;
fi

gp() {
  branch=$(git branch | grep \* | cut -d ' ' -f2)
  git push --set-upstream origin $branch
  git pull origin $branch
  git push origin $branch
}

gc() {
  git commit -m "$*"
}

gnb() {
  git checkout -b $1
}

gpm() {
  git pull origin master
}

gnuke() {
  git add -A
  git reset --hard
}

gsync() {
  git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
  git branch --merged | egrep -v "(master)" | xargs git branch -d
  git remote prune origin
  git fetch --all
  git pull --all
}

alias gs='git status'

# if FZF does not exist, don't continue
if ! command -v fzf > /dev/null 2>&1; then
  return 0;
fi

gcob() {
  local branches branch
  branches=$(git branch) &&
  branch=$(echo "$branches" | fzf +m --no-preview) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}


