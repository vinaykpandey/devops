Supervisor is a client/server system that allows its users to monitor and control a number of processes on UNIX-like operating systems. It shares some of the same goals of programs like launchd, daemontools, and runit.

apt-get install supervisor

sudo supervisorctl
#go to > supervisor console
    > list of process will shown herr

service supervisor restart


sudo supervisorctl reread
sudo service supervisor restart
sudo supervisorctl status




------------------------------
create new supervisor service
------------------------------

PATH=/etc/supervisor/conf.d/
#this is base path of supervisor

create a conf file inside it
nano /etc/supervisor/conf.d/my_flask_app.conf
[program:my_flask_app]
directory=/var/www/my_flask_app
command=/var/www/my_flask_app/env/bin/gunicorn app:app -b localhost:5000
autostart=true  
autorestart=true
stderr_logfile=/var/log/my_flask_app/error_my_flask_app.log
stdout_logfile=/var/log/my_flask_app/access_my_flask_app.log

reread supervisor





