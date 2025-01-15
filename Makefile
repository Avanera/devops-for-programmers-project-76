set_up: install prepare install_docker

# Install the roles added to the requirements.yml file
install:
	ansible-galaxy install -r requirements.yml

# Run playbook to prepare servers
prepare:
	ansible-playbook -i inventory.ini playbooks/prepare_environment.yml

setup:
	# @test -f .env || cp .env.example .env
	docker-compose run --rm redmine npm ci
	
install_docker:
	ansible-playbook playbooks/install_docker.yml -i inventory.ini

deploy:
	ansible-playbook playbooks/deploy_redmine.yml -i inventory.ini

start:
	docker-compose up -d