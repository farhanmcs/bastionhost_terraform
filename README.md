# Digital Tolk Interview Test

Creating a Bastion host with Terraform and AWS and a Python Dockerized API

The repository consists of two folders:

	1. python-timeapi
	2. terraform-bastion

# python-timeapi

This folder containes a simple timeapi.py file in which a single API is written in flask which returned the current Date & Time when we call it through GET.

To build this project please build the given Dockerfile with following command:

	docker build -t timeapi .

To run this Dockerized API please enter following command:

	docker run -p 5432:5432 timeapi

You can view current Date & Time by calling this API at URL : http://localhost:5432 

# terraform-bastion

This folder contains all the terraform files required to create an EC2 bastion host in AWS. 

As a first step please create a public-private key pair locally using following command:

	ssh-keygen -f <privatekeyname>

This public-private key pair will be used later in conecting the EC2 instance of bastion host.

As a next step to run these Terraform configurations please type the following commands:

	terraform init

	terraform plan

You will be asked about multiple input params needed bt terraform configuration to setup like AWS region, EC2 AMI, VPC & Subnet details etc. Please provide those.

Also it is expected that AWS CLI is already configured on your terminal to run this successfully.

After plan is successfull please run the following command to create teh bastion host infrastructure

	terraform apply -auto-approve

To test this code we can ssh to our public instance, and then from our public instance to the private instance, using the command:

	ssh -i <privatekeyname> <user>@<ip_address>

