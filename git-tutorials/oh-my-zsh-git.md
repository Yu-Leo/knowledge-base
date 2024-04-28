# Шпаргалка по плагину git для oh-my-zsh

Полный список алиасов - [здесь](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases).

Мои конфиги:
- `.gitconfig` - [здесь](../configs/git-config/.gitconfig)
- `.zshrc` - [здесь](../configs/zsh-config/.zshrc)

Быстро найти алиас для команды:
```shell
alias | grep "command"
```

## Мой список частоиспользуемых алиасов

```bash
# alias='command'

g='git'

# Add
ga='git add'
gaa='git add --all'

# Commit
gc='git commit'
'gc!'='git commit --verbose --amend'

# Diff
gd='git diff'
gdca='git diff --cached'

# Restore
grs='git restore'
grst='git restore --staged'

# Clone
gcl='git clone --recurse-submodules'

# Push
gp='git push'
gpsup='git push --set-upstream origin $(git_current_branch)' # Push new branch to origin
'gpf!'='git push --force'

# Pull
gpr='git pull --rebase'

# Status
gst='git status'

# Checkout
gco='git checkout'
gcb='git checkout -b' # Create and checkout new branch
gcm='git checkout $(git_main_branch)'

# Rebase
grb='git rebase'
grbm='git rebase $(git_main_branch)'
grbc='git rebase --continue'
grba='git rebase --abort'
grbi='git rebase --interactive'

# Delete branch
gbD='git branch --delete --force'
gbd='git branch --delete'
gpod='git push origin --delete'

# History
glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"' # Absolute timestamps
glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"' # Relative timestamps
gsh='git show'

# Stash
gsta='git stash push'
gstp='git stash pop'

# Reset
grh='git reset'
grhh='git reset --hard'
groh='git reset origin/$(git_current_branch) --hard'

# Merge
gm='git merge'

# Tags
gts='git tag --sign'

# Revert
grev='git revert'
```

## Кастомные алиасы

```bash
# alias='command'

gh='git hist'
gcn='git fetch --prune'
gcmp='gcm && gpr'
```

## Функции

| Команда               | Описание                                              |
| :-------------------- | :---------------------------------------------------- |
| `gbda`                | Удалить все смердженные ветки                         |
| `grename <old> <new>` | Переименовать ветку `<old>` в `<new>`, включая origin |


## Work in Progress (WIP)

| Команда            | Описание                                        |
| :----------------- | :---------------------------------------------- |
| `gwip`             | Закоммитить изменения wip                       |
| `gunwip`           | Раскоммитить изменения wip                      |
| `gunwipall`        | Раскоммитить все изменения wip                  |
