How to run playbook
===================
  - run:
  ```
  vagrant up --provision
  ./port_forward.sh
  ```
 
  - or replace IP in inventory/hosts and run:
  ```
  ansible-playbook -i inventory/ webserver.yml
  ```

How to use roles
================
Every role has it's own README.md.

Look at defaults/main.yml to get list of possible parameters or default values.
