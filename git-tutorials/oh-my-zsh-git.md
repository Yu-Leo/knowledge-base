# Шпаргалка по алиасам плагина git для oh-my-zsh

Полный список алиасов можно посмотреть [тут](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases).

Быстро найти алиас для команды:
```shell
alias | grep "command"
```

## Мой список частоиспользуемых алиасов

```bash
# alias='command'

# Base
g='git'
ga='git add'
gaa='git add --all'
gc='git commit'
'gc!'='git commit --verbose --amend'

# Diff
gd='git diff'
gdca='git diff --cached'

# Clone/pull/push
gcl='git clone --recurse-submodules'
gp='git push'
gpsup='git push --set-upstream origin $(git_current_branch)' # Push new branch to origin
'gpf!'='git push --force'
gup='git pull --rebase'

# Branches
gco='git checkout'
gcb='git checkout -b' # Create and checkout new branch
gcm='git checkout $(git_main_branch)'
grb='git rebase'
grbm='git rebase $(git_main_branch)'
grbc='git rebase --continue'

# Stash
gsta='git stash push'
gstp='git stash pop'
```
