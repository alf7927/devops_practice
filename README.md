c# deveops_practice
ansible-playbook -vv -i ../inventory/ec2.py --user=ubuntu --private-key=$HOME/.ssh/DEVOPS_Practiace.pem webapp_install.yml
history | grep tee
../inventory/ec2.py | tee aws.json
export ANSIBLE_HOST_KEY_CHECKING=false
sudo pip install boto

chmod a+wr devops_practice/\*
ssh -i ~/.ssh/DEVOPS_Practiace.pem ubuntu@54.201.36.204

------------------------------------------kbs----------------------------------------------------
export KUBECONFIG=/mnt/d/DevOps/config/kube_config_cluster_local.yml
kubectl get nodes
kubectl proxy &
kubectl -n kube-system get secrets
kubectl -n kube-system describe secret deployment-controller-token-hq27x

ssh -L 50000:172.31.13.53:6443 ubuntu@52.38.79.165

chmod a+wr devops_practice/*
ssh -i ~/.ssh/DEVOPS_Practiace.pem ubuntu@54.201.36.204
ssh -L 50500:localhost:8001 -i ~/.ssh/DEVOPS_Practiace.pem ubuntu@52.38.79.165

kubectl apply -f k8s/nginx_deployment.yml
kubectl apply -f k8s/nginx_deployment1.yml
kubectl apply -f k8s/nginx_service.yml
kubectl apply -f k8s/nginx_deployment1.yml
kubectl apply -f k8s/nginx_service1.yml
kubectl apply -f k8s/nginx_service.yml