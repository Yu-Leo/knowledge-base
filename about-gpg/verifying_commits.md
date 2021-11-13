# Как верифицировать коммиты в git при помощи gpg

* Статья на Techrocks: [Подпись коммитов в Git: как и зачем это делать](https://techrocks.ru/2021/06/14/commit-signing-in-git/)

## 1. Генирируем пару ключей

[Мой туториал по gpg](./README.md)

```
gpg --full-gen-key
```

1. Вводим `1` (тип ключа "RSA and RSA")
2. В качестве размера ключа указываем `4096`. Это минимальный размер для GitHub и GitLab и максимальный размер, который GPG позволяет сгенерировать.
3. Сколько должен прослужить ключ, вы определяете самостоятельно. Значение по умолчанию — 0 (срок действия не истекает никогда).
4. Подтверждаем указанные данные, введя `y`.



## 2. Добавляем ключ в gitconfig
```
git config --global user.signingkey C6656513A0F9B7B7F4E76389EF39187D04795745
```

## 3. Включаем автоподпись всех коммитов (по желанию)

Чтобы включить подпись всех коммитов, устанавливаем параметр `commit.gpgsign` с помощью git config. Это заставит `git commit` подписывать коммиты по умолчанию.

```
git config --global commit.gpgsign true
```

Если данная опиция не активна, подпись каждого коммита можно производить вручную, добавляя `-s` при `git commit`

## 4. Добавление публичного ключа на GitHub

### 4.1 Экспприруем публичный ключ в ASCII формате в файл 

```
gpg --export --armor C6656513A0F9B7B7F4E76389EF39187D04795745 > ./gpg-key.pub
```

### 4.2 Добавляем ключ на GitHub.com

На GitHub заходим в свои настройки, в раздел **"SSH and GPG keys"**, и нажимаем **"New GPG key"**.

Вставляем содержимое `gpg-key.pub` в поле **"Key"** и нажимаем **"Add GPG key"**.

## :x: Возможные ошибки:

### 1. "Ошибка git - gpg не смог подписать данные"

#### Выглядит примерно так:
```bash
error: gpg failed to sign the data
fatal: failed to write commit object
```

#### [:point_right: Решение](gpg_failed_to_sign_the_data.md)

## :question: Как:
* [Подписать предыдущие коммиты](https://stackoverflow.com/questions/13043357/git-sign-off-previous-commits)
* [Поменять у автора и коммитера емейл и имя во всех коммитах](https://ru.stackoverflow.com/questions/763153/%D0%9F%D0%BE%D0%BC%D0%B5%D0%BD%D1%8F%D1%82%D1%8C-%D1%83-%D0%B0%D0%B2%D1%82%D0%BE%D1%80%D0%B0-%D0%B8-%D0%BA%D0%BE%D0%BC%D0%BC%D0%B8%D1%82%D0%B5%D1%80%D0%B0-%D0%B5%D0%BC%D0%B5%D0%B9%D0%BB-%D0%B8-%D0%B8%D0%BC%D1%8F-%D0%B2%D0%BE-%D0%B2%D1%81%D0%B5%D1%85-%D0%BA%D0%BE%D0%BC%D0%BC%D0%B8%D1%82%D0%B0%D1%85)

