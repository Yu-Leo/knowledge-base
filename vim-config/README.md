# Туториал по установке и настройке VIM

## 1. Установливаем vim

```bash
sudo apt install vim
```

## 2. .vimrc

### 2.1 Создаём .vimrc

```bash
vim ~/.vimrc
```
### 2.2 Задаём настройки
  [Мой .vimrc](./.vimrc)

### 2.3 Сохраняем
`Esc` + `:w`

### 2.4 "Перечитываем" конфиг, чтобы настройки применились
`Esc` + `:so %`

Пока игнорируем ошибки, связанные с плагинами

### 2.3 Выходим
`Esc` + `:q`


## 3. Vim Plug

[Официальный репозиторий](https://github.com/junegunn/vim-plug)

## 3.1 Устанавливаем Vim Plug

Для Unix: 

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

