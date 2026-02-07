CREATE DATABASE IF NOT EXISTS homelab_platform;

CREATE USER IF NOT EXISTS 'homelabuser'@'%' IDENTIFIED BY 'admin@12345';
GRANT ALL PRIVILEGES ON homelab_platform.* TO 'homelabuser'@'%';

FLUSH PRIVILEGES;
