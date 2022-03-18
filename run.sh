#!/bin/bash

/sbin/ipset save f2b-sshd -f f2b-sshd.blacklist

#git push

#/sbin/ipset restore -f -! f2b-sshd-all.blacklist
