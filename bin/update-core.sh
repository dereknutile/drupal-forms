#!/bin/bash

# root directory
root_dir=vagrant
# target installation directory
target_dir=public

# if the first argument is 1, the script will NOT turn maintenance mode off
# ex: ./update-core.sh 1
mode=$1

# TODO: backup sites here

# move to the drupal core directory
cd /$root_dir/$target_dir

echo "Placing site in maintenance mode ..."
drush sset system.maintenance_mode 1

echo "Clearing cache ..."
drush cache-clear all

echo "Updating Drupal ..."
drush up drupal

if [ $1 -ne 1 ]; then
    echo "Site left in maintenance mode for testing."
else
    drush sset system.maintenance_mode 0
    echo "Site no longer in maintenance mode."
    echo "Clearing cache ..."
    drush cache-rebuild
fi

echo "Drupal core update script complete."
