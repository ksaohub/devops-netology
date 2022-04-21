# devops-netology homework
## 3.3. Операционные системы

1. `chdir("/tmp")`

2. root@ubn-net:/home/safonov# `file /dev/tty`
/dev/tty: character special (5/0)

    root@ubn-net:/home/safonov# `file /dev/sda`
/dev/sda: block special (8/0)

    root@ubn-net:/home/safonov# `file /bin/bash`
/bin/bash: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=2a9f157890930ced4c3ad0e74fc1b1b84aad71e6, for GNU/Linux 3.2.0, stripped

`/etc/magic`

в этом месте вывода strace, показывается где утилита file определяет тип файла: 

stat("/root/.magic.mgc", 0x7fff24acf8e0) = -1 ENOENT (No such file or directory)

stat("/root/.magic", 0x7fff24acf8e0)    = -1 ENOENT (No such file or directory)

openat(AT_FDCWD, "/etc/magic.mgc", O_RDONLY) = -1 ENOENT (No such file or directory)

stat("/etc/magic", {st_mode=S_IFREG|0644, st_size=111, ...}) = 0

`openat(AT_FDCWD, "/etc/magic", O_RDONLY) = 3`

fstat(3, {st_mode=S_IFREG|0644, st_size=111, ...}) = 0

read(3, "# Magic local data for file(1) c"..., 4096) = 111

read(3, "", 4096)                       = 0

close(3)  

3. запустил `tail -f 3` в другой сесии терминала, после чего удалил файл 3

    `lsof -p 27167`

    tail    27167 root    3r      REG  253,0     8833 918279 /home/safonov/3 (deleted)

    `cat /dev/null > /proc/27167/fd/3`

    tail: 3: file truncated

4. нет

5. PID    COMM               FD ERR PATH

    641    irqbalance          6   0 /proc/interrupts

    641    irqbalance          6   0 /proc/stat

    641    irqbalance          6   0 /proc/irq/20/smp_affinity

    641    irqbalance          6   0 /proc/irq/19/smp_affinity

    641    irqbalance          6   0 /proc/irq/19/smp_affinity
   
    641    irqbalance          6   0 /proc/irq/0/smp_affinity
   
    641    irqbalance          6   0 /proc/irq/1/smp_affinity

    641    irqbalance          6   0 /proc/irq/8/smp_affinity
   
    641    irqbalance          6   0 /proc/irq/12/smp_affinity
   
    641    irqbalance          6   0 /proc/irq/14/smp_affinity
   
    641    irqbalance          6   0 /proc/irq/15/smp_affinity
   
    1      systemd            12   0 /proc/576/cgroup
   
    641    irqbalance          6   0 /proc/interrupts

6. `uname() ` . Про /proc в мане не нашел :(

7. `$$` — оператор условия (И), в последовательности команд, которые связаны этим оператором, должны выполняться все условия
   
   `;` - делит команды


8. `-e` - выйти, если команда завершаетс не нулевым статусом

    `-u` - Считать неустановленные переменные ошибкой при подстановке.

    `-x` - Печатать команды и их аргументы по мере их выполнения.

    `-o` с переменной  `pipefail` - возвращаемое значение конвейера — это статус последней команды для выхода с ненулевым статусом или ноль, если ни одна команда не вышла с ненулевым статусом

9. статус S - interruptible sleep (waiting for an event to complete). Прерываемый сон (ожидание завершения события)



