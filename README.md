# Terraform AWS EC2 and S3 Beginner Project
This repository contains two simple Terraform configurations to help you learn how to manage AWS EC2 instances and S3 buckets using Terraform. The projects are separated into two folders: one for EC2 and one for S3.

## Project Structure
```bash
├── ec2_project/
│   ├── main.tf       # EC2-related resources
│   ├── variables.tf  # EC2-related variables
│   ├── outputs.tf    # Outputs for EC2 instances
└── s3_project/
    ├── main.tf       # S3 bucket-related resources
    ├── variables.tf  # S3-related variables
    ├── outputs.tf    # Outputs for S3 bucket
```
## Prerequisites
- Terraform (Version 1.0 or higher recommended)
- An AWS account with necessary permissions
- AWS CLI with your credentials configured (aws configure)
## EC2 Project
###  Purpose
This project creates EC2 instances using Terraform. It's designed to help you learn:

- How to create multiple EC2 instances using loops (for_each).
- How to use variables for flexibility (like AMI, instance types, tags).
- How to output important information such as public IPs and instance IDs.
### Steps
1. **Navigate to the EC2 project folde**r:

```bash
cd ec2
```
2. **Initialize Terraform** (downloads the necessary providers):

```bash
terraform init
```
3. **Preview the infrastructure changes** (shows what will happen when you apply):

```bash
terraform plan
```
4. **Apply the configuration** (this will create the EC2 instances):

```bash
terraform apply
```
5. **Check outputs**: Once the process finishes, Terraform will display the public IPs and instance IDs of the created instances.

## S3 Project
### Purpose
This project creates an S3 bucket using Terraform. You'll learn:

- How to create an S3 bucket using Terraform.
- How to use variables to define bucket properties.
- How to output the ARN of the created bucket.
### Steps
1. **Navigate to the S3 project folder**:

```bash
cd s3
```
2. **Initialize Terraform**:

```bash
terraform init
```
3. **Preview the infrastructure changes**:

```bash
terraform plan
```
4. **Apply the configuration** (this will create the S3 bucket):

```bash
terraform apply
```
5. **Check outputs**: Terraform will display the ARN (Amazon Resource Name) of the created S3 bucket.

## Learning Points
### EC2 Project Key Concepts:
- Variables: You can pass different instance types, AMI IDs, and tags using variables.
- Loops (for_each): Automatically create multiple instances using a map variable (ec2_type).
- Outputs: Get important details like public IPs and instance IDs after the instances are created.
### S3 Project Key Concepts:
- Resource Block: Basic structure for creating AWS resources (in this case, an S3 bucket).
- Outputs: Retrieve the ARN of the S3 bucket for later use.
## Next Steps
This is a beginner project meant to get you familiar with Terraform basics. Once you're comfortable:

- Try experimenting with different AWS services (e.g., RDS, IAM roles).
- Learn about state management, remote backends, and modules in Terraform.
- Explore the use of Terraform workspaces and versioning for more complex infrastructure setups.

This is just the beginning of your Terraform learning journey. Enjoy exploring and experimenting with different Terraform configurations!