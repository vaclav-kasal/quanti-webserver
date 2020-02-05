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
            serveralias: www.example.com
            documentroot: /var/www/examplecom/public_html
            extra_parameters: |
              SSLProtocol             -TLSv1.1 -TLSv1.2 -TLSv1.3
              SSLHonorCipherOrder     off
              SSLSessionTickets       off

              SSLCipherSuite ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP
              SSLCertificateFile      /etc/ssl/ansible-self-signed/certs/example.com.crt
              SSLCertificateKeyFile   /etc/ssl/ansible-self-signed/private/example.com.key

      roles:
      - apache



License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
