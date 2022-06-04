# Туториал по деплою Django проекта на Heroku

**Основан на [данном видео](https://youtu.be/xnB0G1WxctM)**

## 1. Устанавливаем Heroku CLI

[Официальная документация](https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli)
```bash
yay -S heroku-cli
```
Если возникает ошибка с зависимостями:
```bash
sudo pacman -S npm
sudo npm i -g npx
```

## 2. Создаём новое приложение

### 2.1 Логинимся в Heroku CLI:
```bash
heroku login
```

### 2.2 Создаём новое приложение
```bash
heroku create <projectname>
```
После `create` можно указать имя приложения. Если этого не сделать, Нeroku сам сгенерирует рандомное имя

## 3. Создаём конфигурационные файлы

В корне репозитория создаём файлы `Procfile` и `runtime.txt`

### 3.1 Procfile

#### Если все приложения Django лежат в корне репозитория:
```
web: gunicorn mysite.wsgi
```

#### Если все приложения Django лежат в папке Django-проекта:
```
web: gunicorn --chdir <projectname> <projectname>.wsgi
```

### 3.2 runtime.txt
Указываем версию Python, которую необходимо использовать
```
python-3.10.4
```

## 4. Устанавливаем необходимые модули

```bash
pip install gunicorn
```

```bash
pip install whitenoise
```
Для работы со статикой

## 5. Настраиваем whitenoise

[Официальная документация](https://whitenoise.evans.io/en/stable/)

**settings.py**
```python
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    "whitenoise.middleware.WhiteNoiseMiddleware",
    # other
]

# ...

ALLOWED_HOSTS = ['*']
```

**wsgi.py**
```python
import os

from django.core.wsgi import get_wsgi_application

from whitenoise import WhiteNoise

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mysite.settings')

application = get_wsgi_application()
application = WhiteNoise(application)
```

## 6. Зависимости (requirements.txt)

В корне репозитория выполняем:
```bash
pip freeze > requirements.txt
```

## 7. Заливаем на Heroku
```bash
git remote add heroku <url_to_heroku_git>
```

```bash
git push heroku
```

> 28.05.22 Обязательно использовать ветку **main**. Если в локальном репозитории используется другая ветка: `git push heroku <branch_name>:main`

Развертывание происходит автоматически

## 8. Обращение к файлам проекта на Heroku
Например:
```bash
heroku run python manage.py migrate
heroku run python manage.py createsuperuser
```

## 9. Работа с переменными окружения на Heroku
[Оцициальная документация](https://devcenter.heroku.com/articles/config-vars#setting-up-config-vars-for-a-deployed-application)

### Вывод списка пеменных окружения
```bash
heroku config
```

### Получение значения пеменной окружения
```bash
heroku config:get VAR_NAME
```

### Установка значения пеменной окружения
```bash
heroku config:set VAR_NAME=VAR_VALUE
```

Можно использовать локальные переменные окужения, т е:
```bash
heroku config:set VAR_NAME=$VAR_NAME
```
В таком случае переменной окружения `VAR_NAME` на Heroku будет присвоено значение локальной переменной `VAR_NAME`
