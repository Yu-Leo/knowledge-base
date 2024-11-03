# Как настроить пробуждение ноута от внешней клавиатуры при закрытой крышке

## Что хотим получить

В файле `/sys/bus/usb/devices/usb1/power/wakeup` должно быть прописано `enabled`.

Можно прописать вручную, но при перезагрузке оно сбросится обратно на `disabled`.

Поэтому пишем скрипт, который будет выполняться по крону при старте системы.

## Скрипт

Файл:

```shell
vim /home/leo/.bin.enabled-wakeup.sh
```

Содержимое:

```
#!/bin/bash
echo "enabled" > /sys/bus/usb/devices/usb1/power/wakeup
echo "enabled" > /sys/bus/usb/devices/usb2/power/wakeup
```

usb2 для надёжности.

Делаем исполняемым:

```shell
chmod +x /home/leo/.bin.enabled-wakeup.sh
```

## Крон

После этого прописывем крон в файл:

```shell
vim /etc/crontab
```

Содержимое:

```
# /etc/crontab: configuration file for cron

# See cron(8) and crontab(5) for details.

# m h dom mon dow user command
@reboot  root /home/leo/.bin/enable-wakeup.sh
```

`leo` в путях - имя пользователя соответственно.

Profit.

