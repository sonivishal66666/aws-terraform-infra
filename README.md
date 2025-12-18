AWS Infrastructure Automation with Terraform
Overview

This project demonstrates the design, provisioning, and debugging of a production-style AWS infrastructure using Terraform (Infrastructure as Code).
The focus is on automation, reproducibility, and real-world DevOps problem-solving, not just resource creation.

The infrastructure provisions networking, security, compute resources, and automated server bootstrapping on AWS, following DevOps best practices.

🧱 Architecture

Core components:

VPC with custom CIDR

Public Subnet

Internet Gateway & Route Table

Security Group with controlled ingress/egress

EC2 Instance (Ubuntu) provisioned via Terraform

Automated Nginx installation using user_data

Internet → Internet Gateway → Route Table → Public Subnet → EC2 → Nginx


Tech Stack

Cloud Provider: AWS (ap-south-1)

Infrastructure as Code: Terraform

Compute: EC2 (Ubuntu 22.04)

Networking: VPC, Subnets, IGW, Route Tables

Security: Security Groups

Web Server: Nginx

OS Automation: cloud-init (user_data)


📁 Project Structure
cloud-infra-terraform/
├── provider.tf        # AWS provider & version locking
├── variables.tf       # Input variables
├── vpc.tf             # VPC & subnet definition
├── network.tf         # Internet Gateway & routing
├── security.tf        # Security group rules
├── ec2.tf             # EC2 instance + user_data
├── outputs.tf         # Useful outputs
└── README.md

⚙️ Key Features

Infrastructure fully provisioned using Terraform

Clear separation of networking, security, and compute

Immutable infrastructure approach (destroy & recreate instead of manual fixes)

Automated server bootstrapping (Nginx installs on launch)

Designed to be repeatable and environment-agnostic

🚀 How to Deploy
Prerequisites

AWS account

IAM user with programmatic access

AWS CLI configured

Terraform installed


Steps
terraform init
terraform plan
terraform apply

After deployment:

Copy the EC2 Public IPv4 address

Open in browser:
http://<public-ip>

🧹 Cleanup (Important)

To avoid unnecessary AWS charges:

terraform destroy

🧠 Real-World Challenges Solved

This project intentionally highlights real DevOps debugging scenarios, including:

SSH key lifecycle and key rotation

AMI vs OS differences (Amazon Linux vs Ubuntu)

Correct SSH usernames per OS

OS-specific user_data bootstrapping

Terraform state awareness and safe resource recreation

PowerShell vs Linux SSH behavior differences

These challenges mirror actual production incidents, not lab exercises.

📌 Why Infrastructure as Code?

Consistency: Same infra every time

Version control: Infra changes are auditable

Reproducibility: Environments can be recreated safely

Automation: No manual AWS console dependency

Scalability: Easy extension to ASG, ALB, RDS, etc.

🔮 Future Enhancements

Remote Terraform state (S3 + DynamoDB locking)

Auto Scaling Groups

Application Load Balancer

CI/CD with GitHub Actions

Multi-environment setup (dev/stage/prod)

Kubernetes integration


