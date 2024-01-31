# Как отключить lightdm

```bash
sudo systemctl disable lightdm.service
```

[Источник](https://ask-ubuntu.ru/questions/86981/kak-otklyuchit-lightdm)

## Добавление X Window System в автозапуск

В файл `~/.bash_profile` добавить:

```
exec startx
```
