#!/bin/sh
sudo apt update && apt install certbot python3-certbot-apache
sudo certbot --nginx
