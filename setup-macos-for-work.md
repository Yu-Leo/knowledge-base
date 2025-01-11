# Первичная настройка MacOS для работы

## Настройки системы 

Чтобы применилось, перезагрузить комп. [Источник](https://qna.habr.com/q/1072884)

### 1. Отключить подсказки спец. символов при удержании клавиш

Если не сделать, эта штука не даст нормально скроллить при помощи j/k.

```shell
defaults write -g ApplePressAndHoldEnabled -bool false
```

### 2. Увеличить скорость повтора символов при удержании

```shell
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 1
```

### 3. Отображать скрытые файлы в Finder

```shell
defaults write com.apple.finder AppleShowAllFiles -bool true
```

### 4. Включить иммитацию удержания ЛКМ 3-мя пальцами на трекпаде

## Установка ПО

### 1. Obsidian

#### 1.1. Установка - [сайт](https://obsidian.md/)
#### 1.2. Создание Vault

#### 1.3. Настройка Vault

Все настройки хранятся в `.obsidian/` в директории Vault-а.

Мой шаблон - [здесь](./obsidian-vault-template).

### 2. Установка brew - [сайт](https://brew.sh/)

### 3. Wezterm

#### 3.1. Установка 

```shell
brew install --cask wezterm
```

#### 3.2. Настройка

Настройки лежат в `~/.wezterm.lua`.

Мой файл с настройками - [здесь](https://github.com/Yu-Leo/dotfiles/blob/main/wezterm/.wezterm.lua)

### 4. zsh

#### 4.1. Установка oh-my-zsh - [сайт](https://ohmyz.sh/#install)

#### 4.2. Установка zsh-syntax-highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
#### 4.3. Установка tmux

```shell
brew install tmux
```

#### 4.4. Настройка

Настройки лежат в `~`.

Мои файлы с настройками - [здесь](https://github.com/Yu-Leo/dotfiles/blob/main/zsh/.zshrc)

### 5. vim

Устанавливаем и настраиваем по [туториалу](https://github.com/Yu-Leo/dotfiles/blob/main/vim).

### 6. neovim

TODO

### 7. GoLand

#### 7.1. Установка

Туториал по получению студенческой лицензии: https://github.com/nguendh/get-student-license

#### 7.2. Настройка

TODO

## SSH-ключи

### 1. Генерация ключей

```shell
ssh-keygen -t ed25519
```

Если не задали название при генерации, переименовываем:
```shell
mv ~/.ssh/id_ed25519 ~/.ssh/personal_key
mv ~/.ssh/id_ed25519.pub ~/.ssh/personal_key.pub
```
### 2. Настройка конфига

```shell
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/personal_key
    IdentitiesOnly yes
```

Вместо `github.com` адрес нужного хостинга

### 3. Закидываем публичный ключ на хостинг

Копируем в буффер обмена:

```shell
cat ~/.ssh/personal_key.pub | pbcopy
```

