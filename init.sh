
mkdir /home/box/web/public
mkdir /home/box/web/public/img
mkdir /home/box/web/public/css
mkdir /home/box/web/public/js
mkdir /home/box/web/uploads
mkdir /home/box/web/ask
mkdir /home/box/web/ask/ask
mkdir /home/box/web/ask/qa
#sudo django-admin.py startproject ask
#sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
#gunicorn -b 0.0.0.0:8080 hello:app
