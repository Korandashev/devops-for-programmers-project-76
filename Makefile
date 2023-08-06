install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file ./.ansible-password

ansible-edit-env:
	ansible-vault edit group_vars/all/vault.yml --vault-password-file ./.ansible-password

ansible-encrypt-env:
	ansible-vault encrypt group_vars/all/vault.yml --vault-password-file