#!/bin/bash

ipset save f2b-sshd -f f2b-sshd.blacklist

git push

ipset restore f2b-sshd -f 
