#!//bin/bash

/systpl/systpl.jinja.py /systpl/redis.conf.tmpl > /etc/redis/redis.conf
/systpl/systpl.jinja.py /systpl/make-backup.sh.tmpl > /make-backup.sh
chmod +x /make-backup.sh

mkdir -p /vol/database/`hostname`-redis && chown heap:root /etc/redis/redis.conf /vol/database/`hostname`-redis 
exec su heap -c "/usr/bin/redis-server /etc/redis/redis.conf"
