Linux security
=========

An Ansible Role that applies baseline security settings for: Fedora and Debian Linux distros

### What is this repository for? ###

Use this repository to apply secure settings to Linux servers. It should be loaded as an Ansible role and deployed as
part of a playbook

### How do I get set up? ###

#### Create an Ansible requirements.yml file
```yaml
---
- src: https://github.com/mesoform/linux-security.git
  version: v0.1.0
  name: linux-security.mesoform.com
  scm: git
```

#### Create a playbook.yml to run the role
```yaml
---
- name: 'Secure Hosts'
  hosts: all
  become: true
  roles:
    - role: linux-security.mesoform.com

```
_You will also need to create an Ansible inventory file_
#### Run the playbook
For example if using in a pipeline which uses docker images you could do
```yaml
pipelines:
  default:
    - step:
        name: Secure Host
        image: mesoform/image-builder
        script:
          - ansible-galaxy role install -r requirements.yml
          - ansible-playbook -v playbook.yml
```

## Official stuff

- [Contributing](https://github.com/mesoform/documentation/blob/main/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/mesoform/documentation/blob/main/CODE_OF_CONDUCT.md)
- [Licence](https://github.com/mesoform/linux-security/blob/main/LICENSE)
- [Contact](https://mesoform.com/contact)