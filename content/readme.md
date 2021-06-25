Title: documentation
Date: 2021-06-25 14:00

## Развернуть Wordpress на своей Linux-машине

###Будем разворачивать Docker контейнеры с wordpress и mysql.

###Список действий для успешного развертывания:

- склонировать себе репозиторий:
```
git clone https://github.com/UnderT0p/sf__wordpress_experimental
```
- перейти в него
```
cd sf__wordpress_experimental
```
- запустить скрипт, который развернет два контейнера
```
bash install_up.sh
```
- ввести в браузер и убедиться что работает
```
localhost:8000
```

## Бекапы
## Для создания бекапа нужной папки и отправки его в яндекс диск сделать следующее:

- установка утилиты davfs2 для монтирования сетевых облачных хранилищ по протоколу WebDAV для дебиан и убунту
```
sudo apt-get install davfs2
```
- Сгенерировать пароль приложения пдробнее тут `https://ploshadka.net/yandex_password_apps`.

- В файл `/etc/davfs2/secrets` необходимо добавить строку:
```
https://webdav.yandex.ru логин_Яндекса пароль_приложения
```
- запустить скрипт backup_yandex.sh с нужной директорией в качестве параметра(/var/www/html - пример),
указанная папка заархивируется утилитой tar.
```
sudo bash backup_yandex.sh /var/www/html
```

###В итоге мы получим архив на яндекс диске такого формата - backup_2021-06-18-15-22.tgz.


## Деплой на продакшн
## Для запуска на целевой машине заготовки WordPress (sf__wordpress_experimental) нужно:

-клонированть этот репозиторий себе на хост
```
git clone https://github.com/UnderT0p/sf__wordpress_staging
```
-отредактированть файл user.txt, внеся в него данные о целевой машине и пользователе
```
(user=UserName@IP_adress)
```
-запустить скрипт
```
bash deploy.sh
```

###Скрипт расчитан на три вида ОС Debian Ubunto или CentOS. В ином случае вы получите сообщение "Sorry we don't know your os"

####Спасибо за внимание.
