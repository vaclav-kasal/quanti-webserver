Role Name
=========

Role for Debian 10.
  - Installs libapache2-mod-php and specified packages(modules)

Requirements
------------

Role Variables
--------------

```
php_version
```
default: 7.3

```
install_packages
```
default: empty list

Dependencies
------------

Example Playbook
----------------

    - hosts: webserver
      vars:
        php_version: 7.3
      roles:
         - apache
         - apache.php

License
-------

WTFPL

Author Information
------------------

vasek.kasal@gmail.com