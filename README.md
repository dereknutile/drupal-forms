# Drupal Forms

## About

This repository is a proof-of-concept to solve a flexible form issue.

## Prerequisites

This repository uses [VLEMP-Drupal](https://github.com/dereknutile/vlemp-drupal.git).    To develop within this project, you'll probably want the following:

* Vagrant
* Git
* If you're running Windows, an ssh tool

## Installation
### Download the repo
    $ git clone https://github.com/dereknutile/drupal-forms.git /path/to/project

### Start the application
    $ cd /path/to/project
    $ vagrant up

### Access the virtual server using SSH
    $ vagrant ssh

### Install Drupal (only needed for updates or first time setup)
    $  /vagrant/bin/./install-drupal.sh

Note: you can force a drupal version by adding it to the end of the command: `/vagrant/bin/./install-drupal.sh 7.0`

### Create MySql Database
    $ mysql -uroot -proot
    $ create database drupal;

### Test
Browse to [http://localhost:8080/](http://localhost:8080/).

### Administer
Browse to [http://localhost:8080/user/login](http://localhost:8080/user/login).

Username: **admin**

Password: **password**
