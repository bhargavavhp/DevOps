To deploy k8s objects using ansible, execute below command by passing `username` environment variable
``` 
ansible-playbook -i <path-to-inventory.ini> <path-to-ansible-playbook> -e "username=<username>" 
```
To deploy k8s using shell script use below command
```
./my-app.sh
```
