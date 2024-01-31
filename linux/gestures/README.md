# Настройка жестов тачпада

Настроил и проверил работу в Manjaro KDE.

## Установка

1. Ставим пакет `libinput-gestures`
```shell
sudo pacman -S libinput-gestures
```

2. Добавляем своего юзера в группу `input`
```shell
sudo gpasswd -a $USER input
```

3. Рестартимся

4. Включаем запуск службы настроек
```
libinput-gestures-setup start
libinput-gestures-setup autostart
```

5. Открываем утилиту `gestures` (GUI). Настраиваем

## Настройки

Чтобы забиндить на жест комбинацию клавиш, используем команду

```
xdotool key <keys>
```

где `<keys>` - клавиша или хоткей. Например, `Super_L+Right`.

[Про xdotool](https://man.archlinux.org/man/xdotool.1).

На моём ноуте (Honor MagicBook 15) клавишу `Meta` (`Win`, `Super`) для xdotool нужно обозначать как `Super_L`. Определил это при помощи команды:
```shell
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
```
[Источник](https://wiki.archlinux.org/title/Keyboard_input#Identifying_keycodes_in_Xorg)

## Мои настройки

Жесты заимствованы из MacOS.

| Жест                               | Хоткей          | Действие                                     |
|------------------------------------|-----------------|----------------------------------------------|
| Свайп тремя пальцами справа налево | `Surer_L+Right` | Переключение на соседний справа рабочий слол |
| Свайп тремя пальцами слева направо | `Surer_L+Left`  | Переключение на соседний слева рабочий слол  |
| Свайп тремя пальцами снизу вверх   | `Surer_L+W`     | Обзор рабочих столов                         |

Экспортированный конфиг - [здесь](./Gestures.conf). Можно импортировать в `gestures`

