# devops-netology homework
## 3.1. Работа в терминале 

Окружение подготовленно.
5. 2gb памяти, 2сpu, 30gb места.
6. конфигурацией VagrantFile:

    `config.vm.provider "virtualbox" do |v|`

    `v.memory = 1024`

    `v.cpus = 2`

    `end`
7. 

8. HISTFILESIZE. переменная описана на 622 строке мануала bash.

    Значение ignoreboth является сокращением для ignorespace и ignoredups. (ignorespace - команды начинающиеся с проблема не сохраняются, ignoredups - не сохраняются дублирующие команды)

9. С помощью `{}` могут быть сгенерированы произвольные строки. Описание на 797 строке мануала bash.

10. touch {1..100000} .  300000 не создается, почему не знаю. 

11. `[[ expression ]]` - возвращает статус 0 или 1, в зависимости от оценки выражения. [[ -d /tmp ]] проверит наличие каталога.

12. -`mkdir /tmp/new_path_directory`

    -`cp /bin/bash /tmp/new_path_directory/`

    -`PATH=/tmp/new_path_directory/:$PATH`
13. at выполняет команды в указанное время, а batch когда уровень загрузки системы 1.5 или ниже указанного при вызове atd.
