Role Name
=========

Installs phppgadmin into specified directory

Requirements
------------

Role Variables
--------------

```
phppgadmin_install_directory
```
Directory accessible from the internet.

Dependencies
------------

PHP pgsql and mbstring modules.

Example Playbook
----------------

    - hosts: webserver
      roles:
         - phppgadmin

License
-------

WTFPL

Author Information
------------------

vasek.kasal@gmail.com