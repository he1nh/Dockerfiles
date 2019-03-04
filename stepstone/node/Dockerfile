FROM ubuntu:16.04

RUN apt update; \
    apt install -y openssh-server curl vim tmux; \
    mkdir -p /var/run/sshd; \
    echo 'root:toor' | chpasswd; \
    sed -i 's/PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config; \
    ssh-keygen -N "" -t rsa -b 4096 -f ~/.ssh/id_rsa; \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys; \
    chmod 600 ~/.ssh/authorized_keys

CMD /usr/sbin/sshd -D
