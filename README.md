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
* Туториал по установке и настройке **vim** - [здесь](configs/vim-config/README.md)
* Добавление поддержки кирилических символов в tty - [здесь](./linux-features/cyrillic-in-tty.md)
* Как отключить системный звук "Бип" (beep) - [здесь](./linux-features/beep.md)
* Как отключить lightdm - [здесь](./linux-features/lightdm.md)
* Redshift - [здесь](./linux-features/redshift.md)
* Установка CLion на Manjaro Linux - [здесь](./clion-manjaro-linux/README.md)
* Туториал по восстановлению grub - [здесь](./linux-grub/README.md)

## :bookmark_tabs: Конспекты
* Docker и Docker compose - [здесь](./docker/README.md)

## :wrench: Конфигурационные файлы
* Конфиг **git**-a (`~/.gitconfig` или `~/.config/git/config`) - [здесь](./configs/git-config/.gitconfig)
* Настройки **PyCharm**-a - [здесь](./configs/pycharm-config/README.md)
* Базовый `.gitignore` для Python + PyCharm - [здесь](./gitignore-files/python_pycharm.gitignore)
* Конфиг `vim`-a (`~/.vimrc`) - [здесь](./configs/vim-config/.vimrc)
* Конфиги `bash`-a (`~/.bashrc`):
  * Вариант № 1 - [здесь](./configs/bash-config/1.bashrc). Изначально создан в Linux Mint. **Из-за кастомизации `PS1` проявляется [ошибка с историей команд](https://www.linux.org.ru/forum/desktop/16257831)!**
  * Вариант № 2 - [здесь](./configs/bash-config/2.bashrc). Ошибка с историей команд не наблюдалась
* i3wm (i3-gaps)
  * Дефолтный конфиг Manjaro i3 - [здесь](./configs/i3-config/default_manjaro_i3_config)
* polybar
  * Дефолтный конфиг - [здесь](./configs/polybar-config/default_config)
* Конфиги `tmux` (положить в `~`) - [здесь](./configs/tmux-config)
* Конфиг `zsh`-а с oh-my-zsh (`~/.zshrc`) - [здесь](./configs/zsh-config/.zshrc)
* Конфиг `alacritty` (`~/.config/alacritty/alacritty.toml`) - [здесь](./configs/alacritty-config/alacritty.toml)

## :pencil2: Разное

* Шаблон README для репозиториев - [здесь](./readme-template/README.md)
* Скрипт для генерации исходного кода значков в README-файл - [здесь](./readme-template/badges_generator.py) ([объяснение](./readme-template/badges_generator.md))

### Git
* Удалить из локального репозитория ссылки на удаленные с удаленного репозитория ветки: `git fetch --prune` ([источник](https://ru.stackoverflow.com/questions/577369/%D0%9A%D0%B0%D0%BA-%D1%83%D0%B4%D0%B0%D0%BB%D0%B8%D1%82%D1%8C-%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D1%8C%D0%BD%D1%83%D1%8E-%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D1%83-%D0%BD%D0%B0-%D0%BD%D0%B5%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D1%83%D1%8E%D1%89%D1%83%D1%8E-%D1%83%D0%B6%D0%B5-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D1%83%D1%8E-%D0%B2%D0%B5%D1%82%D0%BA%D1%83))
* Изменить данные автора коммита по e-mail во всех коммитах репозитория - [здесь](./git-tutorials/change_author.md)
* Шпаргалка по алиасам плагина git для oh-my-zsh - [здесь](./git-tutorials/oh-my-zsh-git.md)

### Linux
* Команды для компиляции / интерпретации и запуска программ из `vim` - [здесь](run_from_vim.md)
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
