Deploying a [Redmine](https://hub.docker.com/_/redmine/) Docker Image with Ansible

Demo app: [ops.net.ru](https://ops.net.ru/)

### Hexlet tests and linter status:
[![Actions Status](https://github.com/Korandashev/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/Korandashev/devops-for-programmers-project-76/actions)

### Setup

1. Change the ansible variables in the `group_vars/all/vailt.yml` file:
```yml
hosts_remote_user: <user>
redmine_db_host: <database_host>
redmine_db_port: <database_port>
redmine_db_name: <database_name>
redmine_db_username: <database_username>
redmine_db_password: <database_password>
redmine_secret_key_base: <secret_key>
```

2. Rename the `.ansible-password.example` file to `.ansible-password` and create a password

3. Encrypt the file `group_vars/all/vailt.yml` with the password from `.ansible-password` file:
```bash
make ansible-encrypt-env
```

4. Install Ansible dependencies:
```bash
make install
```

5. Run Ansible playbook
```bash
make setup
```