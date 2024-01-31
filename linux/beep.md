# Как отключить системный звук «Бип» (beep)

1. Создаём файл

```bash
sudo vim /etc/modprobe.d/nobeep.conf
```

2. В нём пишем

```
blacklist    pcspkr
```

3. Сохраняем файл, перезагружаем компьютер

[Источник](https://pingvinus.ru/note/beep-off)
