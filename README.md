# Terraform + Ansible EC2 Nginx Project

## 🔧 Overview
This project automates the provisioning of an AWS EC2 instance using Terraform and configures it with Nginx using Ansible.

## 📂 Structure

# Terraform + Ansible EC2 Nginx Project

## 🔧 Overview
This project automates the provisioning of an AWS EC2 instance using Terraform and configures it with Nginx using Ansible.

## 📂 Structure

terraform-ec2-demo/
│
├── terraform/ # Contains Terraform files
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── terraform.tfstate
│
├── ansible/ # Contains Ansible playbooks and inventory
│ ├── nginx_setup.yml
│ ├── inventory.ini
│ ├── index.html
│
├── .gitignore
├── README.md

markdown
Copy
Edit

## 🛠️ Tools Used
- Terraform
- Ansible
- AWS EC2
- Ubuntu 22.04

## 🚀 How to Use

### Step 1: Terraform Provisioning
```bash
cd terraform
terraform init
terraform apply
