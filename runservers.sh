# OpenDSA content server
cd /vagrant/OpenDSA
(setsid ./WebServer &)

sleep 2
# OpenDSA-LTI server
cd /vagrant/OpenDSA-LTI
(setsid thin start --ssl --ssl-key-file server.key --ssl-cert-file server.crt -p 9292 &)

sleep 2
# OpenDSA-server
cd /vagrant/OpenDSA-server/ODSA-django
(setsid sudo ./runserver &)
