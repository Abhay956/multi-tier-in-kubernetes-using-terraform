
# Wordpress and mysql two-tier application with kubernetes using terraform


Create a two-tier application using WordPress and MySQL orchestrated with Kubernetes and provisioned with Terraform. The WordPress application should be hosted on one tier, while the MySQL database should be hosted on another tier. Use Terraform to automate the infrastructure provisioning on Kubernetes, ensuring seamless deployment and scaling. Ensure high availability and fault tolerance within the Kubernetes cluster. Additionally, implement security best practices to safeguard the application and data. Provide clear documentation outlining the deployment process and infrastructure architecture for future reference.

## Prerequisites

- Git
- Terraform
- Kubernetes cluster

## Getting Started

1.Clone the repository:
   ```bash
git clone https://github.com/Abhay956/multi-tier-in-kubernetes-using-terraform.git
cd multi-tier-in-kubernetes-using-terraform/
```
If terraform not install then run this script and run nfs script to install nfs-server:
```bash
sh terraform.install.sh
sh nfs-install.sh
```
Install necessary provider plugins:
```bash
terraform init
```
To provision the infrastructure, run: 
```bash
terraform plan
```
The terraform plan command shows what infrastructure will be created/updated/destroyed. Review the plan output to ensure it is making the expected changes.

To then apply the changes:
```bash
terraform apply --auto-approve
```
```bash
localhost:30201
```
![image](https://github.com/Abhay956/multi-tier-in-kubernetes-using-terraform/assets/132220412/63a52dc3-4bf9-49bc-8f48-d5bbc7837a34)


## Lab link
👩‍💻 https://killercoda.com/killer-shell-cka/scenario/playground 

