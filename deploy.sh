#!/bin/bash

# Exit if any command fails
set -e

echo "🚀 Running Terraform..."
cd terraform
terraform init
terraform apply -auto-approve

echo "🌐 Fetching EC2 public IP..."
INSTANCE_IP=$(terraform output -raw instance_public_ip)

cd ..

echo "📡 Writing IP to Ansible inventory..."
echo "$INSTANCE_IP ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/faizan-keypair-v2.pem" > ansible/inventory

echo "🧪 Running Ansible playbook..."
cd ansible
ansible-playbook -i inventory nginx_setup.yml

echo "✅ Deployment complete! Visit: http://$INSTANCE_IP"


