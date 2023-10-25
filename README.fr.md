[![en](https://img.shields.io/badge/language-en-red.svg)](https://github.com/anbahmani/Inception/blob/main/README.md)

# Inception


## Introduction
Dans le cadre de mon parcours en informatique à l'école 42, j'ai entrepris un projet axé sur l'administration système et l'exploration de l'utilisation de Docker. Ce projet impliquait la virtualisation de plusieurs images Docker, chacune créée et configurée dans une machine virtuelle personnelle.

## Objectifs
L'objectif principal était de mettre en place une petite infrastructure en utilisant Docker, composée de différents services. Ce processus nécessitait une compréhension approfondie de Docker et de son écosystème, et a été une excellente occasion de se familiariser avec les concepts de l'administration système.

## Instructions et Conformité
- Machine Virtuelle : Le projet a été intégralement réalisé sur une machine virtuelle, conformément aux directives fournies.
- Organisation des Fichiers : Tous les fichiers nécessaires à la configuration du projet ont été organisés dans un dossier srcs.
- Utilisation de Makefile : Un Makefile a été inclus pour automatiser le processus de configuration, notamment la construction des images Docker via docker-compose.yml.
- Construction de Dockerfiles : Les Dockerfiles ont été personnalisés pour chaque service, interdisant l'utilisation d'images Docker prêtes à l'emploi ou de services comme DockerHub. Ces Dockerfiles étaient essentiels pour construire les images nécessaires pour chaque aspect de l'infrastructure.
- Conteneurs et Services : Plusieurs conteneurs ont été configurés, chacun exécutant un service spécifique. Les détails incluent :
	- NGINX avec TLSv1.2 ou TLSv1.3
	- WordPress avec php-fpm
	- MariaDB
Ces conteneurs ont été optimisés pour la performance et la sécurité, en respectant les meilleures pratiques de Docker.
- Volumes et Réseau : Des volumes Docker ont été utilisés pour stocker de manière persistante les données de la base de données WordPress et les fichiers du site Web. Un réseau Docker a été établi pour faciliter la communication entre les conteneurs.
- Sécurité et Gestion des Utilisateurs : Les meilleures pratiques de sécurité ont été appliquées, notamment en assurant qu'aucun mot de passe n'était stocké dans les Dockerfiles et en utilisant des variables d'environnement. De plus, deux utilisateurs ont été configurés dans la base de données WordPress, avec des politiques strictes concernant les noms d'utilisateur pour éviter les conventions génériques.
- Domaine et Connectivité : Un nom de domaine personnalisé a été configuré pour pointer vers l'adresse IP locale de la machine. Cela a été réalisée selon les besoins, en utilisant le format prédéfini, et était essentielle pour accéder à l'infrastructure via NGINX, sécurisée avec TLSv1.2/1.3 et écoutant sur un port spécifique.

## Réflexions Finales
Ce projet a été une exploration approfondie de Docker et de l'administration système, exigeant une lecture et une recherche considérables pour sa réalisation. Il a fourni une expérience pratique précieuse dans la configuration et la gestion d'une infrastructure multi-services, en soulignant l'importance de la sécurité, de l'efficacité et de la communication inter-services.