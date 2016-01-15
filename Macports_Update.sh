#!/bin/bash

#  Macports AutoUpdate.sh
#  Created by Sam Cohen on 8/6/15.

echo "Checking for updates"
sudo port selfupdate > /dev/null
echo "Repositories up-to-date"
sudo port upgrade outdated
echo "All software up-to-date"
exit 0
