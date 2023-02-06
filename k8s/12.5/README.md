## 12.5 Сетевое взаимодействие в K8S

### 1.

![img.png](img/img.png)

![img_1.png](img/img_1.png)

Ссылка на манифесты:

https://github.com/ksaohub/devops-netology/blob/main/k8s/12.5/manifests/

### 2.
Ingress-controller включен

![img_2.png](img/img_2.png)

![img_3.png](img/img_3.png)

По префиксу /api отвечает nginx мультитулса с 404ой ошибкой. Если поменять местами пути в манифесте ingress, то мультитулс открывается, а nginx по префиксу тоже с 404.

![img_4.png](img/img_4.png)

Если подскажите чего не хватает, буду признателен:) Сам пока не разобрался в чем проблема.

Ссылка на манифест: https://github.com/ksaohub/devops-netology/blob/main/k8s/12.5/manifests/ingress.yaml