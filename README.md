# :books: Моя база знаний

[:tv: Видео про базу знаний ("Johe News")](https://youtu.be/9hruCcHC4FY)

## :heavy_exclamation_mark: Дисклеймер
Данный репозиторий создан мною в первую очередь для организации и систематизации собственных знаний.
<br>
**Может содержать ошибки и неточности!** [Issues](https://github.com/Yu-Leo/knowledge-base/issues) с замечаниями и [Pull requests](https://github.com/Yu-Leo/knowledge-base/pulls) с исправлениями ошибок приветствуются!

## :page_facing_up: Туториалы
* Туториал по подключению SFML к проекту в Visual Studio 2019 - [здесь](./SFML-VisualStudio2019/README.md)
* Туториал по деплою Django проекта на Heroku - [здесь](./django-heroku/README.md)

### Linux
* Добавление поддержки кирилических символов в tty - [здесь](./linux/cyrillic-in-tty.md)
* Как отключить системный звук "Бип" (beep) - [здесь](./linux/beep.md)
* Как отключить lightdm - [здесь](./linux/lightdm.md)
* Redshift - [здесь](./linux/redshift.md)
* Установка CLion на Manjaro Linux - [здесь](./linux/clion-manjaro/README.md)
* Восстановление grub - [здесь](./linux/grub.md)
* Настройка жестов тачпада - [здесь](./linux/gestures/README.md)
* Как настроить пробуждение ноута от внешней клавиатуры при закрытой крышке - [здесь](./linux/usb-wakeup.md)

## :bookmark_tabs: Конспекты
* Docker и Docker compose - [здесь](./docker/README.md)

## :wrench: Конфигурационные файлы

В репозитории https://github.com/Yu-Leo/dotfiles

## :pencil2: Разное

* Шаблон README для репозиториев - [здесь](./readme-template/README.md)
* Скрипт для генерации исходного кода значков в README-файл - [здесь](./readme-template/badges_generator.py) ([объяснение](./readme-template/badges_generator.md))
* Шаблон Vault для Obsidian - [здесь](./obsidian-vault-template)
* Первичная настройка MacOS для работы - [здесь](./setup-macos-for-work.md)

### Git
* Удалить из локального репозитория ссылки на удаленные с удаленного репозитория ветки: `git fetch --prune` ([источник](https://ru.stackoverflow.com/questions/577369/%D0%9A%D0%B0%D0%BA-%D1%83%D0%B4%D0%B0%D0%BB%D0%B8%D1%82%D1%8C-%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D1%83%D1%8E-%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D1%83-%D0%BD%D0%B0-%D0%BD%D0%B5%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D1%83%D1%8E-%D1%83%D0%B6%D0%B5-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D1%83%D1%8E-%D0%B2%D0%B5%D1%82%D0%BA%D1%83))
* Изменить данные автора коммита по e-mail во всех коммитах репозитория - [здесь](./git-tutorials/change_author.md)
* Как задать адрес удаленного репозитория: `git remote set-url origin <url>`
* Как изменить message у коммита в глубине: сделать `git rebase -i` и задать у строки коммита команду `reword` ([источник](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/changing-a-commit-message))
* Переместить в новую ветку новый коммит из мастера- [здесь](./git-tutorials/move-commit.md)
* Шпаргалка по алиасам плагина git для oh-my-zsh - [здесь](./git-tutorials/oh-my-zsh-git.md)

### Linux
* Мой формат даты и времени для трея (поставил в Manjaro Cinnamon): `%A | %d.%m.%y | %H:%M` (_Воскресенье | 03.04.22 | 21:30_)

## :link: Ссылки
* Соглашение об именовании репозиториев - [github gits](https://gist.github.com/maestrow/9b97fa931d5995fe0cbfc65d13020bb0)
* Версионирование:
  * Cемантическое Версионирование 2.0.0 - [сайт](https://semver.org/lang/ru/)
  * "Стадии разработки и тестирования ПО или что означает Pre-Alpha, Alpha, Beta, RC, Final" - [сайт](https://monobit.ru/stadii-razrabotki-i-testirovaniya-po-ili-chto-oznachaet-pre-alpha-alpha-beta-rc-final.html)
* Conventional Commits - [сайт](https://www.conventionalcommits.org/en/v1.0.0/)
* Описание разметки файла README.md - [github](https://github.com/GnuriaN/format-README)
* Emoji Cheat Sheet - [сайт](https://www.webfx.com/tools/emoji-cheat-sheet/)
* Значки для README - [сайт](https://shields.io/)
* Сервис для создания схем и диаграм - [сайт](https://app.diagrams.net/)
* Git Flow, GitHub Flow, GitLab Flow - [stackoverflow](https://ru.stackoverflow.com/questions/623355/%D0%9F%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5-%D0%B8%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B2%D0%B5%D1%82%D0%BE%D0%BA) 
* Git Flow - [статья](https://habr.com/ru/post/106912/)
* "В чём разница между популярными Open Source лицензиями?" - [статья](https://tproger.ru/articles/whats-difference-between-licenses/)
* Крутой С++ Code Style - [github](https://github.com/Demon1747/lectures/blob/master/style_guide.md)
* C++ форматтер - [ClangFormat](https://clang.llvm.org/docs/ClangFormat.html), [описание конфига](https://clang.llvm.org/docs/ClangFormatStyleOptions.html)
* Обои на рабочий стол - [сайт](https://www.goodfon.ru/)
 
## :open_hands: Лицензия

Если данный репозиторий был полезен для Вас, поставьте звёздочку ⭐️

Автор: [Yu-Leo](https://github.com/Yu-Leo)

GNU General Public License v3.0

Полный текст в [LICENSE](LICENSE)
