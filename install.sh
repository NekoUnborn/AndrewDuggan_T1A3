#!/bin/bash
echo "Greetings"
echo "Now installing..."
touch ./saved_data/users.csv
touch .env
echo 'API=' >> .env
echo 'MY_EMAIL=' >> .env
echo 'MY_DOMAIN=' >> .env
gem install bundle
bundle install