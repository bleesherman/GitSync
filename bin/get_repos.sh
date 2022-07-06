#!/bin/bash

curl https://api.github.com/users/timweth/repos -o /home/ubuntu/util/repolist.json
echo $(jq -r '.[].full_name' /home/ubuntu/util/repolist.json) | tr " " "\n" > /home/ubuntu/util/repolist.txt
