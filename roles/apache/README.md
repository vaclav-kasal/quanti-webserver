Apache 2.4
==========

Apache 2.4 for debian 10.

Requirements
------------

If you would like to use https, you need to provide certificate for TLS.

Role Variables
--------------
Available variables are listed in defaults/main.yml


Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: webserver
      vars:
        apache_vhosts:
          - servername: example.com
            documentroot: /var/www/examplecom/
            https_redirect: true

        apache_ssl_vhosts:
          - servername:                 example.com
            documentroot:               /var/www/examplecom/
            ssl_certificate_file:       /etc/ssl/ansible-self-signed/certs/examplecom.crt
            ssl_certificate_key_file:   /etc/ssl/ansible-self-signed/private/examplecom.key



      roles:
      - apache



License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
