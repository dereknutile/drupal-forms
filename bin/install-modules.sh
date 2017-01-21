#!/bin/bash

# modules directory
modules_dir=/vagrant/public/modules

echo "Clearing cache ..."
drush cache-rebuilld

echo "Install modules ..."
drush dl yamlform --destination=$modules_dir

echo "Enable modules(s)"
drush en yamlform
