# SDT-Part2-Practice

## Описание проекта

SDT-Part2-Practice - это проект на Ruby on Rails, использующий PostgreSQL в качестве базы данных. SDT означает "Software Development Technologies" (Технологии разработки программного обеспечения).

## Установка

Для установки проекта выполните следующие шаги:

1. Клонируйте репозиторий с GitHub:
    ```bash
    git clone https://github.com/fralorange/SDT-Part2-Practice
    ```
2. Перейдите в каталог проекта:
    ```bash
    cd SDT-Part2-Practice
    ```
3. Установите все зависимости:
    ```bash
    bundle install
    ```
4. Запустите Docker Compose для создания и запуска контейнера базы данных:
    ```bash
    docker-compose up -d
    ```
5. Создайте базу данных и выполните миграции:
    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```
6. Запустите сервер:
    ```bash
    rails server
    ```

## Использование

После установки вы можете открыть веб-браузер и перейти по адресу `http://localhost:3000` для доступа к приложению.

## Лицензия

Этот проект доступен под лицензией MIT. Подробности можно найти в файле LICENSE.
