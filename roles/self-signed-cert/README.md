Self signed certificate
=======================

Role for debian 10 and ubuntu 18.04.

For secure connect to the site import generated file self_signed_ca_cert into your browser. You can do it in settings -> search for keyword "cert" and look for import Certificate Authority(CA). After import you need to restart browser.

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
        self_signed_ca_key: /etc/ssl/ansible-self-signed/private/ca.key
        self_signed_ca_cert: /etc/ssl/ansible-self-signed/certs/ca.pem
        self_signed_ca_rootself_signed_ca_password: 34lkj42lkj5hi
        self_signed_ca_country: CZ
        self_signed_ca_state: Czech repubic
        self_signed_ca_locality: Prague
        self_signed_ca_organization: Quanti s.r.o.
        self_signed_ca_organizationalunit: IT
        self_signed_ca_commonname: Quanti s.r.o
        self_signed_ca_email: vasekkasal@gmail.com


        self_signed_cert:
        - self_signed_domain: example.com
          self_signed_domain_key: /etc/ssl/ansible-self-signed/private/example.com.key
          self_signed_domain_cert: /etc/ssl/ansible-self-signed/certs/example.com.crt
          self_signed_domain_csr: /etc/ssl/ansible-self-signed/tmp/example.com.csr
          self_signed_domain_ext: /etc/ssl/ansible-self-signed/tmp/example.com.ext

      roles:
      - self-signed-cert


License
-------
WTFPL

Author Information
------------------

vasek.kasal@gmail.com
