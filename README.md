# deveops_practice
ansible-playbook -vv -i ../inventory/ec2.py --user=ubuntu --private-key=$HOME/.ssh/DEVOPS_Practiace.pem webapp_install.yml
  history | grep tee
../inventory/ec2.py | tee aws.json
export ANSIBLE_HOST_KEY_CHECKING=false
sudo pip install boto
chmod a+wr devops_practice/*
ssh -i ~/.ssh/DEVOPS_Practiace.pem ubuntu@54.201.36.204