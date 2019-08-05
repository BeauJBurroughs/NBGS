#!/bin/bash
## don't forget to install ssh key or won't work
ssh user@x.x.x.x python ~/Downloads/docker/homeass/python_scripts/failover.py >> /config/python_scripts/failover.txt
