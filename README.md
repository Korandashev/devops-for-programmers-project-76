Deploying a [Redmine](https://hub.docker.com/_/redmine/) Docker Image with Ansible

Demo app: [ops.net.ru](https://ops.net.ru/)

### Hexlet tests and linter status:
[![Actions Status](https://github.com/Korandashev/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/Korandashev/devops-for-programmers-project-76/actions)

### Setup

1. Change the ansible variables in the `group_vars/all/vailt.yml` and `group_vars/webservers/vailt.yml` file:
```yml
# group_vars/all/vailt.yml`

hosts_remote_user: <user>
app_port: <port>

redmine_db_host: <database_host>
redmine_db_port: <database_port>
redmine_db_name: <database_name>
redmine_db_username: <database_username>
redmine_db_password: <database_password>
redmine_secret_key_base: <secret_key>
```

```yml
# group_vars/webservers/vailt.yml

dd_api_key: <datadog_api_key>
host_url: <site_url>
```

2. Rename the `.ansible-password.example` file to `.ansible-password` and create a password

3. Encrypt `group_vars` files with the password from `.ansible-password` file (arg `group`: `all`/`webservers`):
```bash
make ansible-encrypt-env group=all
```

1. Install Ansible dependencies:
```bash
make install
```

1. Run Ansible playbook
```bash
make setup
```