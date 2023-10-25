[![fr](https://img.shields.io/badge/language-fr-blue.svg)](https://github.com/anbahmani/Inception/blob/main/README.fr.md)

# Inception

## Introduction
As part of my computer science curriculum at 42 school, I undertook a project focused on system administration and delving into the use of Docker. This project involved the virtualization of several Docker images, each created and configured within a personal virtual machine.

## Objectives
The main goal was to set up a small infrastructure using Docker, composed of different services. This process required a deep understanding of Docker and its ecosystem and served as an excellent opportunity to familiarize myself with system administration concepts.

## Guidelines and Compliance
- Virtual Machine: The project was executed entirely within a virtual machine, in line with the provided guidelines.
- File Organization: All necessary files for the project's configuration were organized within a srcs folder.
- Use of Makefile: A Makefile was included to automate the setup process, specifically building the Docker images via docker-compose.yml.
- Building Dockerfiles: Dockerfiles were custom-written for each service, barring the use of pre-made Docker images or services like DockerHub. These Dockerfiles were crucial in constructing the necessary images for each facet of the infrastructure.
- Containers and Services: Several containers were set up, each running a specific service. Details include:
	- NGINX with TLSv1.2 or TLSv1.3
	- WordPress with php-fpm
	- MariaDB
These containers were optimized for performance and security, following Docker best practices.
- Volumes and Networking: Docker volumes were employed for persistent data storage of the WordPress database and website files. A Docker network was established to facilitate communication between containers.
- Security and User Management: Security best practices were implemented, including ensuring no passwords were stored within the Dockerfiles and utilizing environment variables. Additionally, two users were set up within the WordPress database, with strict policies on usernames to avoid generic conventions.
- Domain and Connectivity: A personalized domain name was configured to point towards the local IP address of the machine. It was created as required, using the predefined format, and was essential for accessing the infrastructure via NGINX, secured with TLSv1.2/1.3 and listening on a specific port.

## Final Thoughts
This project was a thorough exploration of Docker and system administration, demanding considerable reading and research for its completion. It provided valuable hands-on experience in setting up and managing a multi-service infrastructure, highlighting the importance of security, efficiency, and inter-service communication.

