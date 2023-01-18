#!/bin/bash

set -e

USER=$1

echo "I: Create user $USER"
useradd --comment "Github Action Runner" --create-home --shell /bin/bash $USER

echo "I: Adding user to gpio group"
adduser $USER gpio

echo "I: Adding user to video group"
adduser $USER video
