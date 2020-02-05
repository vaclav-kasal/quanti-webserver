Role Name
=========

Role for Debian 10.
  - Simple role - installs libapache2-mod-php

Requirements
------------

Role Variables
--------------

```
php_version
```
default: 7.3

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