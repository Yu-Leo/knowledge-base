# Скрипт для генерации исходного кода значков в README-файл

## Навигация

* [Файл скрипта](#chapter-0)
* [Формат генерируемых значков](#chapter-1)
* [Список значков](#chapter-2)
* [Пример](#chapter-3)


<a id="chapter-0"></a>
## Файл скрипта - [здесь](./badges_generator.py)

<a id="chapter-1"></a>
## Формат генерируемых значков
<p align="center">
  <a href="https://github.com/Yu-Leo/knowledge-base/blob/main/LICENSE" target="_blank"> <img alt="license" src="https://img.shields.io/github/license/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/releases/latest" target="_blank"> <img alt="last release" src="https://img.shields.io/github/v/release/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/commits/main" target="_blank"> <img alt="last commit" src="https://img.shields.io/github/last-commit/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/graphs/contributors" target="_blank"> <img alt="commit activity" src="https://img.shields.io/github/commit-activity/m/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
</p>

Используются значки, генерируемые при помощи [shields.io](https://shields.io/)

<a id="chapter-2"></a>
## Список значков

### 1. Лицензия

#### Пример:
  <a href="https://github.com/Yu-Leo/knowledge-base/blob/main/LICENSE" target="_blank"> <img alt="license" src="https://img.shields.io/github/license/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>

#### Ссылка:
  На файл LICENSE в ветке `main` заданного репозитория
  
#### Шаблон исходного кода:
```html
  <a href="https://github.com/<user-name>/<repo-name>/blob/main/LICENSE" target="_blank">
    <img alt="license" src="https://img.shields.io/github/license/<user-name>/<repo-name>?style=for-the-badge&labelColor=090909"></a>
```
  
### 2. Номер релиза

#### Пример:
  <a href="https://github.com/Yu-Leo/knowledge-base/releases/latest" target="_blank"> <img alt="last release" src="https://img.shields.io/github/v/release/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>

#### Ссылка:
  На последний на данный момент времени релиз в репозитории
  
#### Шаблон исходного кода:
```html
  <a href="https://github.com/<user-name>/<repo-name>/releases/latest" target="_blank">
    <img alt="last release" src="https://img.shields.io/github/v/release/<user-name>/<repo-name>?style=for-the-badge&labelColor=090909"></a>
```


### 3. Время последнего коммита

#### Пример:
  <a href="https://github.com/Yu-Leo/knowledge-base/commits/main" target="_blank"> <img alt="last commit" src="https://img.shields.io/github/last-commit/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>

#### Ссылка:
  На список коммитов в ветке `main` заданного репозитория
  
#### Шаблон исходного кода:
```html
  <a href="https://github.com/<user-name>/<repo-name>/commits/main" target="_blank">
    <img alt="last commit" src="https://img.shields.io/github/last-commit/<user-name>/<repo-name>?style=for-the-badge&labelColor=090909"></a>
```

### 4. Активность (коммитов в месяц)

#### Пример:
  <a href="https://github.com/Yu-Leo/knowledge-base/graphs/contributors" target="_blank"> <img alt="commit activity" src="https://img.shields.io/github/commit-activity/m/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>

#### Ссылка:
  На *Insights* -> *Commits*
  
#### Шаблон исходного кода:
```html
  <a href="https://github.com/<user-name>/<repo-name>/graphs/contributors" target="_blank">
    <img alt="commit activity" src="https://img.shields.io/github/commit-activity/m/<user-name>/<repo-name>?style=for-the-badge&labelColor=090909"></a>
```

<a id="chapter-3"></a>
## Пример
```shell
Enter GitHub username: Yu-Leo
Enter GitHub repossitory name: knowledge-base

<p align="center">
  <a href="https://github.com/Yu-Leo/knowledge-base/blob/main/LICENSE" target="_blank"> <img alt="license" src="https://img.shields.io/github/license/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/releases/latest" target="_blank"> <img alt="last release" src="https://img.shields.io/github/v/release/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/commits/main" target="_blank"> <img alt="last commit" src="https://img.shields.io/github/last-commit/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
  <a href="https://github.com/Yu-Leo/knowledge-base/graphs/contributors" target="_blank"> <img alt="commit activity" src="https://img.shields.io/github/commit-activity/m/Yu-Leo/knowledge-base?style=for-the-badge&labelColor=090909"></a>
</p>
```
  
**Если данный скрипт был полезен для Вас, поставьте звёздочку ⭐️ на репозиторий.**
