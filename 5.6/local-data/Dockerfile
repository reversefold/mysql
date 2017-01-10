FROM papercrane/mysql:5.6

RUN mkdir /var/lib/mysql-local && chown mysql:mysql /var/lib/mysql-local && chmod 755 /var/lib/mysql-local && sed -i'' 's:/var/lib/mysql:/var/lib/mysql-local:g' /etc/mysql/my.cnf
