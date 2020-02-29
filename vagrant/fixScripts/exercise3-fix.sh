#!/bin/bash
sed  -i  's/deny from all/Allow from all/i'  /etc/apache2/sites-available/default
service  apache2 reload