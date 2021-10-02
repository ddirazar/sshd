FROM alpine
RUN echo 'root:demo' | chpasswd && apk add openssh && ssh-keygen -A 1>/dev/null && sed -i 's/#PermitRootLogin.*/PermitRootLogin\ yes/' /etc/ssh/sshd_config
EXPOSE      22
CMD /usr/sbin/sshd -D

