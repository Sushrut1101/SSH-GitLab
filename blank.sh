#!/usr/bin/env bash

while [ -e /var/tmate.sock ]
do
    sleep 1
done
