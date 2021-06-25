# sf__docs

Установка Pelican:
bash install.sh

Затем 
```
 pelican-quickstart
 ```
 ОТвечаем на вопросы о предпологаемом сайте
 Кладем файл с Markdown в папку /content
 Выполняем команду 
 ```
 pelican
 ```
 В папке output получаем результат.
 Поднять в докере:
 sudo docker run --name Doc -d -p 8080:80 -v ~/sf__docs/content/output://usr/share/nginx/html:ro nginx
 Скрин:
![image](https://user-images.githubusercontent.com/70749855/123442149-43fbdb80-d5dd-11eb-8e8d-f2231af4628f.png)
