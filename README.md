### Hexlet tests and linter status:
[![Actions Status](https://github.com/Avanera/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Avanera/devops-for-programmers-project-76/actions)

Link to the deployed application: https://secproj.ru

# Server configuration project using Ansible

## Preparation Steps

0. Check the availability of all the servers via ssh.

1.  Use one of the [suggested methods](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) to install Ansible

2. Install dependencies, Set up the servers, Install Docker:
    ```
    make set_up
    ```
2. Create file vault_pass.txt with the ansible vault password string.
3. Deploy Redmine to the servers:
    ```
    make deploy
    ```
4. Deploy Datadog to the servers:
    ```
    make deploy_datadog
    ```
5. Start Redmine:
    ```
    make start
    ```
