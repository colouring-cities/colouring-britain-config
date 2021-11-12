#~/bin/bash

set -e

rsync -r ~/predeploy/app/ /var/www/colouring-london/app
