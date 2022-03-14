#!/bin/bash
# Ejecucion de playbooks para configuracion de los servidores nfs, workers y master
#
echo "Inicia instalacion y actualizacion de los nodos. "
ansible-playbook -i hosts install-common.yaml
echo "Inicia instalacion y configuracion de nfs"
ansible-playbook -i hosts -l nfs install-nfs.yaml
echo "Configuracion comun para master y workers"
ansible-playbook -i hosts conf-servers.yaml
echo "Configuracion Kubernetes para master"
ansible-playbook -i hosts -l master conf-kubernetes.yaml
echo "Configuracion para workers"
ansible-playbook -i hosts -l workers conf-workers.yaml
