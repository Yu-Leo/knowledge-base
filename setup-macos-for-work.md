# Первичная настройка MacOS для работы

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

Мой файл с настройками - [здесь](./configs/wezterm-config/.wezterm.lua)

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

Настройки лежат в `~/.wezterm.lua`.

Мой файл с настройками - [здесь](./configs/zsh-config/.zshrc)

### 5. vim

Устанавливаем и настраиваем по [туториалу](./configs/vim-config).

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

```shell
cat ~/.ssh/personal_key.pub | pbcopy
```

