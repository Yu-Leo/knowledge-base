# Туториал по установке и настройке vim

**Сайт с множеством плагинов для vim-а:** [vimawesome.com](https://vimawesome.com/)

## 1. Устанавливаем vim

```bash
sudo apt install vim
```

```shell
sudo pacman -S vim
```

```shell
brew install vim
```

## 2. Файл ~/.vimrc

### 2.1 Создаём ~/.vimrc

```bash
vim ~/.vimrc
```
### 2.2 Задаём настройки в ~/.vimrc

Мой файл с настройками - [здесь](./.vimrc)

### 2.3 Сохраняем и выходим
`Esc` + `:wq`

## 3. Vim Plug

[Официальный репозиторий](https://github.com/junegunn/vim-plug)

### 3.1 Устанавливаем Vim Plug

Для Unix: 

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[Полная инструкция по установке](https://github.com/junegunn/vim-plug/blob/master/README.md#installation)

### 3.2 Устанавливаем все плагины, указанные в ~/.vimrс

Заходим в vim и устанавливаем плагины: `Esc` + `:PlugInstall`

## 4. Готово

**Если данный туториал был полезен для Вас, поставьте звёздочку ⭐️ на репозиторий.**
