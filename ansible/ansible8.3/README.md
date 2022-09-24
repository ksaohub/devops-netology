## 08.03 Использование Yandex Cloud

### Хосты:
![img.png](pic/img.png)

### 1.
![img_6.png](pic/img_6.png)

### 2.
Использовал get_url для скачивания пакетов и yum для установки на хосте, модуль git для скачивания репозитория с lighthouse, template для замены конфигов. 

### 3.
![img_7.png](pic/img_7.png)

### 4.
![img_1.png](pic/img_1.png)

### 5.
Ошибки поправлены

### 6.
![img.png](pic/img_8.png)
![img_1.png](pic/img_9.png)

### 7.
![img.png](pic/img_10.png)
![img_1.png](pic/img_11.png)

### 8.
Результат тот же. Playbook идемпотентен.

### 9.
Playbook скачивает и устанавливает Vector, Clickhouse и Lighthouse на разных хостах в Яндекс облаке. Запускается сервис Clickhouse и создается БД. Так же устанавливается и настаивается веб сервер nginx на хосте с lighthouse для доступа в веб интерфейс.  

### 10.