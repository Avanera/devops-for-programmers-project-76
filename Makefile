# Install the roles added to the requirements.yml file
install:
	ansible-galaxy install -r requirements.yml

# Run playbook to prepare servers
prepare:
	ansible-playbook -i inventory.ini playbooks/prepare_environment.yml
