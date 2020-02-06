Role Name
=========

Installs postgresql. Role for debian 10.

SQL file placed in files/initialize.sql is imported only once. If you wish to deploy file again, you need to remove file /etc/postgresql/11/main/initialized.

Requirements
------------

Role Variables
--------------

Available variables are listed in defaults/main.yml

Dependencies
------------

Example Playbook
----------------

    - hosts: webserver
      vars:
        postgresql_databases:
          - name: example_database  
        postgresql_users: 
          - name: example_user_ro
            password: asdf
          - name: example_user_rw
            password: asdf
        postgresql_privs:
          - roles: exapmle_user_rw
            state: present
            db: example_database
            privs: ALL
            type: database

      roles:
         - postgresql

License
-------

WTFPL

Author Information
------------------

vasek.kasal@gmail.com