install: ansible-install-requirements
setup: ansible-run-playbook
run: docker-compose


ping:
	ansible all -i inventory.ini -m ping

ansible-install-requirements:
	ansible-galaxy install -r requirements.yml

ansible-run-playbook:
	ansible-playbook playbook.yml -i inventory.ini

docker-compose:
	docker compose -f docker-compose.yml up --abort-on-container-exit