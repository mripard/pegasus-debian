#!/bin/bash

set -e

USER=$1

echo "I: Create user $USER"
useradd --comment "Admin Account" --create-home --shell /bin/bash $USER

echo "I: Adding user to video sudo"
adduser $USER sudo
