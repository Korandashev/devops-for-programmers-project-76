setup: ansible-install-requirements
run: ansible-run-playbook

ping:
	ansible all -i inventory.ini -m ping

ansible-install-requirements:
	ansible-galaxy install -r requirements.yml

ansible-run-playbook:
	ansible-playbook playbook.yml -i inventory.ini