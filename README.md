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
