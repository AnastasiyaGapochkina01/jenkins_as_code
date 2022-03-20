### Описание
Контейнер с jenkins as code с предустановленными плагинами.

### Компоненты
|Файл|Описание|
|-----|----|
|jenkins.yaml|основной файл кофигурации|
|jenkins-cli.jar|jar-ник для jenkins cli|
|import_jobs.sh|bash скрипт для импорта джоб в формате xml|
|plugins.txt|список устанавливаемых плагинов|

### Переменные окружения
|ENV|Описание|
|----|----|
|ADMIN_USER|username админского пользователя (ex. admin)|
|ADMIN_FULL_NAME|Полное имя админского пользователя (ex. Admin Admin)|
|ADMIN_PASSWORD|Пароль админского пользователя|
|JENKINS_USER_PASSWORD|Пароль юзера jenkins в gitlab. Используется для подключения к gitlab|