set_up: install install_docker

# Install the roles added to the requirements.yml file
install:
	ansible-galaxy install -r requirements.yml

install_docker:
	ansible-playbook playbooks/install_docker.yml -i inventory.ini

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault_pass.txt

edit_vault:
	ansible-vault edit group_vars/webservers/vault.yml
