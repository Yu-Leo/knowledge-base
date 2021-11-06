# Про шифрование данных при помощи gpg

* Официальный сайт GnuPG: [gnupg.org](https://www.gnupg.org/)

* Полезные видео про gpg: [Диджитализируй!](https://youtu.be/I2mwqC6HGGE), [Johe News](https://youtu.be/2CwsoGw2coc)


## Краткий справочник по "командам" gpg

`gpg --full-generate-key` - генерация новой пары ключей

`gpg -k` - список публичных ключей

`gpg -K` - список приватных ключей


## Создание новой пары ключей

### 1. Запускаем процесс генерации:
```
gpg --full-generate-key
```

```
gpg (GnuPG) 2.2.29; Copyright (C) 2021 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Выберите тип ключа:
   (1) RSA и RSA (по умолчанию)
   (2) DSA и Elgamal
   (3) DSA (только для подписи)
   (4) RSA (только для подписи)
Ваш выбор? 
```

### 2. Выбираем тип шифрования

```
...
Ваш выбор? 1
```

```
длина ключей RSA может быть от 1024 до 4096.
Какой размер ключа Вам необходим? (3072) 
```

### 3. Выбираем размер ключа

```
...
Какой размер ключа Вам необходим? (3072) 4096
```

```
Запрошенный размер ключа - 4096 бит
Выберите срок действия ключа.
         0 = не ограничен
      <n>  = срок действия ключа - n дней
      <n>w = срок действия ключа - n недель
      <n>m = срок действия ключа - n месяцев
      <n>y = срок действия ключа - n лет
Срок действия ключа? (0) 
```

### 4. Выбираем срок действия ключа

```
...
Срок действия ключа? (0) 0
```

```
Срок действия ключа не ограничен
Все верно? (y/N) 
```

### 5. Подстверждаем
```
...
Все верно? (y/N) y
```

### 6. Вводим данные, подтвержаем

```
GnuPG должен составить идентификатор пользователя для идентификации ключа.

Ваше полное имя: Test Test
Адрес электронной почты: test@test.com
Примечание: 
Вы выбрали следующий идентификатор пользователя:
    "Test Test <test@test.com>"

Сменить (N)Имя, (C)Примечание, (E)Адрес; (O)Принять/(Q)Выход? o
```


### 7. Вводим фразу-пароль, подтверждаем

![passpharse img](./passpharse.jpg)

### 8. Ключ сгенерирован!

```
Необходимо получить много случайных чисел. Желательно, чтобы Вы
в процессе генерации выполняли какие-то другие действия (печать
на клавиатуре, движения мыши, обращения к дискам); это даст генератору
случайных чисел больше возможностей получить достаточное количество энтропии.
Необходимо получить много случайных чисел. Желательно, чтобы Вы
в процессе генерации выполняли какие-то другие действия (печать
на клавиатуре, движения мыши, обращения к дискам); это даст генератору
случайных чисел больше возможностей получить достаточное количество энтропии.
gpg: ключ 32597BBB5391DB11 помечен как абсолютно доверенный
gpg: сертификат отзыва записан в '/home/leo/.gnupg/openpgp-revocs.d/B54A23DFFF4A3A848FF8A63032597BBB5391DB11.rev'.
открытый и секретный ключи созданы и подписаны.

pub   rsa4096 2021-11-06 [SC]
      B54A23DFFF4A3A848FF8A63032597BBB5391DB11
uid                      Test Test <test@test.com>
sub   rsa4096 2021-11-06 [E]
```
