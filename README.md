# devops-netology homework
## 3.6. Компьютерные сети 2

1. https://prnt.sc/VshuBukvzcY7 https://prnt.sc/x_DvOyt5xbzM

2. протокол LLDP. проверить можно установив пакет lldpd и командой `lldpdctl`

3. технология VLAN. пакет vlan, команда `vconfig`. https://prnt.sc/IXV-7dRBmEge

4. LAG - агрегапия портов. Типы: статический и динамический (использует протокол LACP и позволяет добавлять или удалять интерфесы во время активного соединения)
   
   Балансировка может осуществляться:
   - по MAC-адресу отправителя или MAC-адресу получателя или учитывая оба адреса

   - по IP-адресу отправителя или IP-адресу получателя или учитывая оба адреса

   - по номеру порта отправителя или номеру порта получателя или учитывая оба порта

   https://prnt.sc/N8mNBXa1QI22

5. в сети с маской /29 8 ip адресов. из сети с маской /24 можно получить 32 подсети с маской /29.
   
   10.10.10.0/29 10.10.10.8/29 10.10.10.16/29

6. частные адрес так же можно взять из сети 100.64.0.0/10. для подсети из 40-50 хостов достаточно маски /26, в которой может быть 62 хоста.

7. проверить ARP табилцу windows можно командой `arp -a`, на linux можно этой же командой, если поставить net-tools, или командой `ip neigh`

   удалить ip: `arp -d 1.1.1.1`

   очистить кеш: `ip neigh flush all`