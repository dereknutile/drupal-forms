#!/bin/bash

# drupal version, example: drupal-7.x
ver=drupal
# root directory
root_dir=vagrant
# target installation directory
target_dir=public

# move existing public directory
mv /$root_dir/$target_dir /$root_dir/$target_dir.bak

# drush download project
drush dl $ver --destination=/$root_dir/ --drupal-project-rename=$target_dir

cd /$root_dir/$target_dir
