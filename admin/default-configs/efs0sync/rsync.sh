#!/bin/bash

# Supposed to run on rsync-host01, change rsync-host02 to rsync-host01 to make a script that is meant to run on rsync-host02.

while true; do
  inotifywait -r -e modify,attrib,close_write,move,create,delete /home/ubuntu/sites
  rsync -avz  --delete-after /home/ubuntu/sites/ /home/ubuntu/efs-sync
  inotifywait -r -e modify,attrib,close_write,move,create,delete /home/ubuntu/efs-sync
  rsync -avz  --delete-after /home/ubuntu/efs-sync/ /home/ubuntu/sites
done

