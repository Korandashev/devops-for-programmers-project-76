install: ansible-install-requirements
setup: ansible-run-playbook


ping:
	ansible all -i inventory.ini -m ping

ansible-install-requirements:
	ansible-galaxy install -r requirements.yml

ansible-run-playbook:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file ./.ansible-password

ansible-edit-env:
	ansible-vault edit group_vars/all/vault.yml --vault-password-file ./.ansible-password