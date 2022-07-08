# Docker и Docker Compose

## Введение

**Docker** - средство упаковки, доставки и запуска приложений. Главная задача - запустить приложение. Быстрее и легче, чем ВМ. Использует ядро базовой ОС.

**Docker image** - сборка приложения (готовая, но не запущенная)

**Docker container** - работающее приложение, созданное на базе Docker image (образа). Для контейнера образ - readonly сущность.

[Статья про установку Docker на Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-ru)

Реестр образов - [DockerHub](https://hub.docker.com/)


## Пример № 1

### Сборка образа

```bash
docker build -t hello-world .
```

`-t hello-world` - тег, название образа

`.` - собрать из текущей директории

Dockerfile нужен для того, чтобы сообщить докеру каким образом нужно  собирать и запускать приложение

**Dockerfile**

```dockerfile
FROM python:3.6

WORKDIR /usr/src/app/

COPY . /usr/src/app

CMD ["python", "app.py"]
```

`FROM python:3.6` - указываем базовый образ, с которого начинаем сборку.

Best practices:
- Указывать точные версии образов
- Стараться использовать `alpine` версии . `-alpine` - легковесные версии образов, основанные на Alpine Linux

`latest` - последняя версия (используется по умолчанию)

`WORKDIR /usr/src/app/` - указываем рабочую директорию внутри контейнера

`COPY . /usr/src/app` - копируем содержимое текущей директории нашей машины в указанную 2-м аргументом директорию контейнера

`CMD ["python", "app.py"]` - инструкции для запуска приложения при запуске контейнера

Комментарии в `Dockerfile` начинаются с # (как в Python)


### Запуск контейнера

```bash
docker run hello-world
```

`hello-world` - имя образа.

**Можно создать имя:**

```bash
docker run --name hello-world hello-world
```

`--name hello-world` - имя контейнера

**Запуск в фоне**

```bash
docker run -d hello-world 
```

**Автоудаление контейнера после завершения выполнения**

```bash
docker run --rm hello-world 
```

Контейнер работает до тех пор, пока работает приложение.


## Пример № 2

### Сборка образа

**Dockerfile**

```dockerfile
FROM python:3.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
```

`EXPOSE 8080` - "пробрасываем" порт 8080 из контейнера


### Запуск контейнера


```bash
docker run --name hello-world --rm -p 8080:8080 hello-world
```

`8080:8080` - порт нашей машины : порт внутри контейнера


## Переменные окружения
#### В `Dockerfile`

```dockerfile
FROM python:3.10

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENV TZ Europe/Moscow

CMD ["python", "app.py"]
```

`ENV TZ Europe/Moscow` - задаём переменные окружения

#### При запуске

```bash
docker run --name hello-world --rm -p 8080:8080 -e TZ=Europe/Moscow hello-world
```


## Docker volume

**Docker volume** позволяет сохранить данные из контейнера (не будут удалены при остановке и удалении контейнера) 

**Список docker volume**

```bash
docker volume ls
```

**Создание**

```bash
docker volume create web
```

**Запуск с docker volume**

```bash
docker run --name hello-world --rm -p 8080:8080 -e TZ=Europe/Moscow -v web:/usr/src/app/resources hello-world
```

`web` - имя docker volume


## Операции с контейнерами и образами

### Просмотр всех контейнеров (даже остановленных)

```bash
docker ps -a
```

`NAME` - если не указываем, докер генерирует своё

### Удаление контейнера

```bash
docker rm 6988fb47bc6f
```

`6988fb47bc6f` - ID контейнера. Можно передавать не ID, а имя


#### Подробная инфа о конкретном контейнере:

```bash
docker inspect 123
```

`123` - id контейнера. Можно указывать имя

### Получение только ID всех контейнеров (в том числе остановленных)

```bash
docker ps -a -q
```

### Удаление всех контейнеров

```bash
docker rm $(docker ps -a -q)
```

### Остановка контейнера

```bash
docker stop 9186e9bd75d4
```

### Просмотр логов контейнера

```bash
docker logs <название контейнера>
```

### Удаление образа

```bash
docker rmi 32529af72583
```

`32529af72583` - ID образа. Можно передавать не ID, а имя.

### Удаление всех образов

```bash
docker rmi $(docker images -q)
```

### Удаление всех неиспользуемых образов, контейнеров и сетей

```bash
docker system prune
```





## Docker compose

**Docker compose** - более высокоуровневый (по сравнению с Docker) инструмент, который контролирует взаимодействие контейнеров между собой

[Установка на Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04-ru)
**docker-compose.yaml**

Для каждого контейнера docker-compose создаёт хосты, на которые мы можем ссылаться по имени контейнера

### Пример № 1
```yaml
version: "3"

volumes:
	mongodb_volume:

services:
	youtube_statistic:
		build: StatisticManager/
		restart: always
		enviroment:
			-TZ=Europe/Moscow
			
	web_serivice:
		build: WebSerivice/
		restart: always
		ports:
			-8080:8080
		enviroment:
			-TZ=Europe/Moscow
	mongodb:
		image: mongo:latest
		volumes:
			-mongodb_volume:/data/db
		restart: always
```

### Пример № 2

**docker-compose.yaml**

```yaml
version: "3.7"

volumes:
	postgres_data:

services:
	dm_db:
		image: postgres:10.1-alpine
        volumes:
        	- postgres_data:/var/lib/postgresql/data
        ports:
        	- 5435:5432
	dm_web:
		build: .
		command: python /usr/src/dm_test/manage.py runserver 0.0.0.0:8000
		volumes:
			- .:/usr/src/dm_test
		ports:
			- 8000:8000
		depends_on:
			- dm_db
```

`depends_on` - указываем зависимости. Данные контейнеры будут запущены до того контейнера, в котором прописаны их названия (в данном случае сначала будет запущен `dm_db`, а затем `dm_web`).

`ports` нужно указывать только для того, чтобы иметь доступ снаружи. Если нужен доступ внутри одной сети docker-compose, `ports` можно не указывать

### Пример № 3

Контейнеры можно именовать

**docker-compose.yaml**

```yaml
version: "3"

services:
	api:
		build: ./api
		container_name: realworld-docker-api
		command: npm run start
		restart: unless-stoped
		ports:
			- "8000:8000"
		env_file:
			- ./.env.dev
```
Удобная схема именования: `имя-проекта-имя-сервиса`

### Пример № 4

docker-compose создаёт общую для сервисов сеть

Можно четко описать в `docker-compose.yaml`. Так же можно для каждого сервиса описать, должен ли он быть подключен к какой-то сети и если да, то к какой (по умолчанию все подключены к дефолтной).

**docker-compose.yaml**

```yaml
version: "3"

services:
	api:
		build: ./api
		container_name: realworld-docker-api
		command: npm run start
		restart: unless-stoped
		ports:
			- "8000:8000"
		env_file:
			- ./.env.dev
		networks:
			- realworld-docker-network
networks:
	realworld-docker-network:
		driver: bridge
```

Сети не привязаны к проектам. Best practice - "неймспейсить" сети названиями проектов (т. е.: `имя-проекта-network`).

### Операции docker-compose

#### Сборка

```bash
docker-compose build
```

#### Запуск

```bash
docker-compose up -d
```

`-d` - запуск всех контейнеров в фоне

#### Запуск со сборкой

```bash
docker-compose up --build
```

#### Остановка

```bash
docker-compose down
```

#### Выполнение команды внутри контейнера

```bash
docker exec -it realworld-docker-api echo "foo"
```

Запуск shell:
```bash
docker exec -it realworld-docker-api sh
```

### docker-compose для режима разработки (dev)

```bash
docker-compose -f docker-compose.yaml -f docker-compose.dev.yaml up --build
```

В данном случае в `docker-compose.dev.yaml` достаточно переопределить лишь необходимые поля (а не все из `docker-compose.yaml`).

Все настройки указываются в `docker-compose.yaml` (конфигурация для продакшена). Для режима разработки необходимые настройки переопределяются в `docker-compose.dev.yaml`



## :link: Источники
- [docker и docker compose деплой проекта с нуля](https://www.youtube.com/playlist?list=PLmC7X4gkQWCe5yNW8h4q543WUiBCM6Odj)
- [Основы Docker. Большой практический выпуск](https://youtu.be/QF4ZF857m44)
- [Django + Docker](https://www.youtube.com/playlist?list=PLF-NY6ldwAWrTEtHA8zhIVeNIzXjmS8Vu)
- [Docker для начинающих и чайников](https://www.youtube.com/playlist?list=PLmC7X4gkQWCelT_CNveGlfYLK6kiiG-IX)
