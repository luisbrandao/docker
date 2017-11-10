#!/bin/bash
cd /var/www/app
bundle
bundle exec rails s -p 3000 -b '0.0.0.0'
