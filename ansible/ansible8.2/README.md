## 08.02 Работа с Playbook

# 1.
![img_1.png](pic/img_1.png)

# 2.
![img_3.png](pic/img_3.png)

# 3.
Использовал get_url для скачивания и template для замены конфига (конфиг взял из инета).

# 4. 
Скачивает и устанавливает

![img_4.png](pic/img_4.png) 

# 5.
![img_5.png](pic/img_5.png)

# 6.
![img_6.png](pic/img_6.png)

# 7.
![img_7.png](pic/img_7.png)

# 8. 
Идемпотентен.
![img_8.png](pic/img_8.png)

# 9.
Playbook скачивает и устанавливает Vector и Clickhouse. Также запускается сервис Clickhouse и создается БД.

Пока пришлось использовать `validate_certs` так как были пробемы со скачиванием
![img_9.png](pic/img_9.png)

и `disable_gpg_check` проблемы с установкой
![img_10.png](pic/img_10.png)

Как пофиксить пока не разобрался (гуглил достаточно долго). Накостылял так, но в целом playbook отработал :)

# 10. 
https://github.com/ksaohub/devops-netology/tree/main/ansible/ansible8.2/playbook