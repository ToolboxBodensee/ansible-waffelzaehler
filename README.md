 Ansible Waffelzähler Playbook Sammlung
==========================================
![C3WOC](https://c3woc.de/images/logo/c3woc.svg "C3WOC")

Der "Waffelzähler" ist ein Sensor der zählt, wie oft das Waffeleisen sich öffnet. 
Diese Daten sollen an ein [Grafana](https://status.c3woc.de) gesendet werden,
dass dann bunte Waffelgraphen anzeigt. 

In diesem Playbook wird auf einem Debian dieses Grafana installiert und eingerichtet.
Das passende Playbook hierfür ist ``waffel.yml``.

Außerdem wird der Raspberry Pi mit der Software für den Sensor ausgestattet.
Das geschieht mit dem Playbook ``sensor.yml``.

 Installation:
---------------
```bash
# clone and enter this git Repository:
https://github.com/ToolboxBodensee/ansible-waffelzaehler.git deploy-ansible-waffelzaehler
cd deploy-ansible-waffelzaehler

# Download some submodules:
git submodule update --init --recursive

# Download grafana role
ansible-galaxy install -r roles/requirements.yml

# run playbook
ansible-playbook waffel.yml

```

 Verschlüsselte variable:
-------------------------
Es gibt einige verschlüsselte variabeln in diesem Playbook. Diese werden mit hilfe eines [Ansible Vault](https://docs.ansible.com/ansible/latest/user_guide/vault.html) verschlüsselt. Der Key zum entschlüsseln liegt in einem privaten Submodule, das daher leider nicht jedem zur verfügung steht. Sorry.

```bash
ansible-playbook waffel.yml --vault-id vars/vault-passwort/c3woc-vault
```
