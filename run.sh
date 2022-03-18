#!/bin/bash

/sbin/ipset save blacklist -f f2b-sshd.blacklist

git push

/sbin/ipset restore -f -! f2b-sshd-all.blacklist
